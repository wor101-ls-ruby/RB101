require 'pry'

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
  prompt "Hit or Stay (h or s)?:"
  answer = gets.chop.downcase
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
  elsif 11 + (ace_cards.size - 1) + non_ace_card_value <= 21
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

def initial_deal(dealer_hand, player_hand)
  d_name = dealer_hand[1][:name]
  d_suit = dealer_hand[1][:suit]
  d_total = dealer_hand[1][:value]
  p_hand = hand_as_string(player_hand)
  p_total = determine_value(player_hand)

  puts "Dealer has: #{d_name} of #{d_suit} and an unknown card"
  puts "Player has: #{p_hand}"
  puts "Dealer has a total of #{d_total} vs. Player total of #{p_total}"
end

def player_bust(player_hand)
  name = player_hand[-1][:name]
  suit = player_hand[-1][:suit]
  total = determine_value(player_hand)
  puts "You were dealt a #{name} of #{suit} for a total of #{total}."
  puts "You busted!"
end

def dealer_reveal(dealer_hand)
  hand = hand_as_string(dealer_hand)
  value = determine_value(dealer_hand)
  system 'clear'
  puts "Dealer reveals they have: #{hand} for a total of #{value}"
end

def dealer_hits(dealer_hand, player_hand)
  name = dealer_hand[-1][:name]
  suit = dealer_hand[-1][:suit]
  puts "Dealer hits and draws a #{name} of #{suit}"
  puts "Dealer has: #{hand_as_string(dealer_hand)}"
  puts "Player has: #{hand_as_string(player_hand)}"
end

def announce_winner(winner)
  if winner == 'Push'
    puts "It's a push!"
  else
    puts "#{winner} is the winner!"
  end
end

def play_again?
  prompt "Play again (y or n)?:"
  gets.chomp.downcase[0] == 'y'
end

loop do
  greeting

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

    system 'clear'
    if player_total > 21
      winner = 'Dealer'
      player_bust(player_hand)
      break
    end

    initial_deal(dealer_hand, player_hand)

    if hit? != true
      dealer_reveal(dealer_hand)
      break
    end
    deal_cards!(shuffled_deck, player_hand, 1)
  end

  dealer_total = determine_value(dealer_hand)

  loop do
    break if winner == 'Dealer'

    while dealer_total < 17 || dealer_total < player_total
      pause
      system 'clear'

      deal_cards!(shuffled_deck, dealer_hand, 1)
      dealer_total = determine_value(dealer_hand)
      dealer_hits(dealer_hand, player_hand)
      display_score(dealer_total, player_total)
    end

    if dealer_total > 21
      winner = 'Player'
      break
    elsif player_total < dealer_total
      winner = 'Dealer'
      break
    elsif player_total == dealer_total
      winner = 'Push'
      break
    end
  end

  announce_winner(winner)
  break if play_again? != true
end
