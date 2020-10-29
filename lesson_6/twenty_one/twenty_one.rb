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
      if ('2'..'10').include?(name) # rubocop wants this broken out into another method
        hash[:value] = name.to_i
      elsif %w(Jack Queen King).include?(name)
        hash[:value] = 10
      else
        hash[:value] = 11
      end
      deck << hash
    end
  end
  deck
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

def display_score(dealer_total, player_total)
  puts "Dealer has a total of #{dealer_total} versus player total of #{player_total}"
end

def pause
  prompt "Hit enter to proceed:"
  gets.chomp
end

loop do
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
      puts "You were dealt a #{player_hand[-1][:name]} of #{player_hand[-1][:suit]} for a total of #{player_total}."
      puts "You busted!"
      break
    end

    puts "Dealer has: #{dealer_hand[1][:name]} of #{dealer_hand[1][:suit]} and an unknown card for a total of #{dealer_hand[1][:value]}"

    puts "Player has: #{hand_as_string(player_hand)} for a total of #{player_total}"
    if hit? != true
      system 'clear'
      puts "Dealer reveals they have: #{hand_as_string(dealer_hand)} for a total of #{determine_value(dealer_hand)}"
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

      puts "Dealer hits and draws a #{dealer_hand[-1][:name]} of #{dealer_hand[-1][:suit]}"
      puts "Dealer has: #{hand_as_string(dealer_hand)}"
      puts "Player has: #{hand_as_string(player_hand)}"
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

  puts "#{winner} is the winner!"
  prompt "Play again (y or n)?:"
  break unless gets.chomp.downcase[0] == 'y'
end
