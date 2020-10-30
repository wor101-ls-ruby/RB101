MAX_SCORE = 21
DEALER_STAY = 17

def prompt(string)
  puts '=>' + string
end

def create_deck
  deck = []
  names = ('2'..'10').to_a + %w(Jack Queen King Ace)
  suits = %w(Hearts Diamonds Clubs Spades)
  names.each do |name|
    suits.each do |suit|
      hash = {}
      hash[:name] = name
      hash[:suit] = suit
      hash[:value] = assign_card_value(name)
      deck << hash
    end
  end
  deck
end

def assign_card_value(name)
  if ('2'..'10').include?(name)
    name.to_i
  elsif %w(Jack Queen King).include?(name)
    10
  else
    11
  end
end

def deal_cards!(deck, hand, number_of_cards)
  deck.shift(number_of_cards).each { |card| hand << card }
end

def hand_as_string(hand)
  hand_as_string = ''
  hand.each do |card|
    hand_as_string << card[:name] + ' of ' + card[:suit]
    if hand.size > 1 && hand.last != card
      hand_as_string << ', '
    end
  end
  hand_as_string
end

def hit?
  answer = ''
  loop do
    prompt "Hit or Stay (h or s)?:"
    answer = gets.chop.downcase
    if answer[0] != 'h' && answer[0] != 's'
      prompt "You must enter Hit or Stay"
    else
      break
    end
  end
  answer[0] == 'h'
end

def determine_value(hand)
  non_ace_cards_value = determine_non_ace_cards_value(hand)

  ace_cards_value = determine_ace_value(non_ace_cards_value, hand)

  non_ace_cards_value + ace_cards_value
end

def determine_non_ace_cards_value(hand)
  non_ace_cards = hand.select { |card| card[:name] != 'Ace' }
  non_ace_cards.inject(0) { |sum, card| sum + card[:value] }
end

def determine_ace_value(non_ace_card_value, hand)
  ace_cards = hand.select { |card| card[:name] == 'Ace' }

  if ace_cards.size == 0
    0
  elsif 11 + (ace_cards.size - 1) + non_ace_card_value <= MAX_SCORE
    11 + (ace_cards.size - 1)
  else
    ace_cards.size
  end
end

def display_score(d_total, p_total)
  puts "Dealer has a total of #{d_total} vs. player total of #{p_total}"
end

def pause
  prompt "Hit enter to proceed:"
  gets.chomp
end

def greeting
  system 'clear'
  puts "*****************************"
  puts "        TWENTY ONE           "
  puts "*****************************"
  pause
end

def initial_deal(dealer_hand, player_hand, p_total)
  d_name = dealer_hand[1][:name]
  d_suit = dealer_hand[1][:suit]
  d_total = dealer_hand[1][:value]
  p_hand = hand_as_string(player_hand)

  puts "Dealer has: #{d_name} of #{d_suit} and an unknown card"
  puts "Player has: #{p_hand}"
  puts "Dealer has a total of #{d_total} vs. Player total of #{p_total}"
end

def player_bust?(player_hand, p_total)
  name = player_hand[-1][:name]
  suit = player_hand[-1][:suit]

  if p_total > MAX_SCORE
    puts "You were dealt a #{name} of #{suit} for a total of #{p_total}."
    puts "You busted!"
    true
  else
    false
  end
end

def dealer_reveal(dealer_hand, d_total)
  hand = hand_as_string(dealer_hand)

  system 'clear'
  puts "Dealer reveals they have: #{hand} for a total of #{d_total}"
end

def dealer_hits(dealer_hand, player_hand)
  name = dealer_hand[-1][:name]
  suit = dealer_hand[-1][:suit]
  puts "Dealer hits and draws a #{name} of #{suit}"
  puts "Dealer has: #{hand_as_string(dealer_hand)}"
  puts "Player has: #{hand_as_string(player_hand)}"
end

def determine_winner(dealer_total, player_total)
  if dealer_total > MAX_SCORE
    'Player'
  elsif player_total < dealer_total
    'Dealer'
  elsif player_total == dealer_total
    'Push'
  end
end

def announce_winner(winner)
  if winner == 'Push'
    puts "It's a push!"
  else
    puts "#{winner} is the winner!"
  end
end

def announce_grand_winner(dealer_wins, player_wins)
  system 'clear'
  if dealer_wins >= 5
    puts "Dealer is the Grand Winner!"
    puts "Dealer has won #{dealer_wins} games to #{player_wins}!"
  else
    puts "Player is the Grand Winner!"
    puts "Player has won #{player_wins} games to #{dealer_wins}!"
  end
end

def play_again?
  prompt "Play again (y or n)?:"
  gets.chomp.downcase[0] == 'y'
end

# main loop
loop do
  greeting
  dealer_wins = 0
  player_wins = 0

  # first to 5 loop
  loop do
    break if dealer_wins == 5 || player_wins == 5
    shuffled_deck = create_deck.shuffle

    player_hand = []
    dealer_hand = []
    winner = ''

    # initial deal
    deal_cards!(shuffled_deck, player_hand, 2)
    deal_cards!(shuffled_deck, dealer_hand, 2)

    dealer_total = 0
    player_total = 0

    # begin player loop
    loop do
      player_total = determine_value(player_hand)
      dealer_total = determine_value(dealer_hand)

      system 'clear'
      if player_bust?(player_hand, player_total)
        winner = 'Dealer'
        dealer_wins += 1
        break
      end

      initial_deal(dealer_hand, player_hand, player_total)

      if hit? != true
        dealer_reveal(dealer_hand, dealer_total)
        break
      end
      deal_cards!(shuffled_deck, player_hand, 1)
    end

    # dealer loop
    if winner != 'Dealer'
      while dealer_total < DEALER_STAY || dealer_total < player_total
        break if dealer_total > player_total
        pause
        system 'clear'

        deal_cards!(shuffled_deck, dealer_hand, 1)
        dealer_total = determine_value(dealer_hand)
        dealer_hits(dealer_hand, player_hand)
        display_score(dealer_total, player_total)
      end

      winner = determine_winner(dealer_total, player_total)
      if winner == 'Dealer'
        dealer_wins += 1
      elsif winner == 'Player'
        player_wins += 1
      end
    end

    announce_winner(winner)
    pause
  end

  announce_grand_winner(dealer_wins, player_wins)
  break if play_again? != true
end
