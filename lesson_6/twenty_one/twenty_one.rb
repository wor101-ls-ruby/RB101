require 'pry'
# DECK = { '2h' => { name: 'Two', value: 2, suit: 'Hearts' }, '2d' => { name: 'Two', value: 2, suit: 'Diamonds' }, 
#         '2c' => { name: 'Two', value: 2, suit: 'Clubs' }, '2s' => { name: 'Two', value: 2, suit: 'Spades' }, 
#         '3h' => { name: 'Three', value: 3, suit: 'Hearts' }, '3d' => { name: 'Three', value: 3, suit: 'Diamonds' }, 
#         '3c' => { name: 'Three', value: 3, suit: 'Clubs' }, '3s' => { name: 'Three', value: 3, suit: 'Spades' }, 
#         '4h' => { name: 'Four', value: 4, suit: 'Hearts' }, '4d' => { name: 'Four', value: 4, suit: 'Diamonds' }, 
#         '4c' => { name: 'Four', value: 4, suit: 'Clubs' }, '4s' => { name: 'Four', value: 4, suit: 'Spades' },          
#         '5h' => { name: 'Five', value: 5, suit: 'Hearts' }, '5d' => { name: 'Five', value: 5, suit: 'Diamonds' }, 
#         '5c' => { name: 'Five', value: 5, suit: 'Clubs' }, '5s' => { name: 'Five', value: 5, suit: 'Spades' },  
#         '6h' => { name: 'Six', value: 6, suit: 'Hearts' }, '6d' => { name: 'Six', value: 6, suit: 'Diamonds' }, 
#         '6c' => { name: 'Six', value: 6, suit: 'Clubs' }, '6s' => { name: 'Six', value: 6, suit: 'Spades' }, 
#         '7h' => { name: 'Seven', value: 7, suit: 'Hearts' }, '7d' => { name: 'Seven', value: 7, suit: 'Diamonds' }, 
#         '7c' => { name: 'Seven', value: 7, suit: 'Clubs' }, '7s' => { name: 'Seven', value: 7, suit: 'Spades' },   
#         '8h' => { name: 'Eight', value: 8, suit: 'Hearts' }, '8d' => { name: 'Eight', value: 8, suit: 'Diamonds' }, 
#         '8c' => { name: 'Eight', value: 8, suit: 'Clubs' }, '8s' => { name: 'Eight', value: 8, suit: 'Spades' }, 
#         '9h' => { name: 'Nine', value: 9, suit: 'Hearts' }, '9d' => { name: 'Nine', value: 9, suit: 'Diamonds' }, 
#         '9c' => { name: 'Nine', value: 9, suit: 'Clubs' }, '9s' => { name: 'Nine', value: 9, suit: 'Spades' },   
#         '10h' => { name: 'Ten', value: 10, suit: 'Hearts' }, '10d' => { name: 'Ten', value: 10, suit: 'Diamonds' }, 
#         '10c' => { name: 'Ten', value: 10, suit: 'Clubs' }, '10s' => { name: 'Ten', value: 10, suit: 'Spades' },           
#         'jackh' => { name: 'Jack', value: 10, suit: 'Hearts' }, 'jackd' => { name: 'Jack', value: 10, suit: 'Diamonds' }, 
#         'jackc' => { name: 'Jack', value: 10, suit: 'Clubs' }, 'jacks' => { name: 'Jack', value: 10, suit: 'Spades' },             
#         'queenh' => { name: 'Queen', value: 10, suit: 'Hearts' }, 'queend' => { name: 'Queen', value: 10, suit: 'Diamonds' }, 
#         'queenc' => { name: 'Queen', value: 10, suit: 'Clubs' }, 'queens' => { name: 'Queen', value: 10, suit: 'Spades' },            
#         'kingh' => { name: 'King', value: 10, suit: 'Hearts' }, 'kingd' => { name: 'King', value: 10, suit: 'Diamonds' }, 
#         'kingc' => { name: 'King', value: 10, suit: 'Clubs' }, 'kings' => { name: 'King', value: 10, suit: 'Spades' },   
#         'aceh' => { name: 'Ace', value: [1, 11], suit: 'Hearts' }, 'aced' => { name: 'Ace', value: [1, 11], suit: 'Diamonds' }, 
#         'acec' => { name: 'Ace', value: [1, 11], suit: 'Clubs' }, 'aces' => { name: 'Ace', value: [1, 11], suit: 'Spades' } }    
        
DECK = [ { name: 'Two', value: 2, suit: 'Hearts' }, { name: 'Two', value: 2, suit: 'Diamonds' }, 
         { name: 'Two', value: 2, suit: 'Clubs' }, { name: 'Two', value: 2, suit: 'Spades' }, 
        { name: 'Three', value: 3, suit: 'Hearts' }, { name: 'Three', value: 3, suit: 'Diamonds' }, 
        { name: 'Three', value: 3, suit: 'Clubs' }, { name: 'Three', value: 3, suit: 'Spades' }, 
         { name: 'Four', value: 4, suit: 'Hearts' }, { name: 'Four', value: 4, suit: 'Diamonds' }, 
         { name: 'Four', value: 4, suit: 'Clubs' }, { name: 'Four', value: 4, suit: 'Spades' },          
        { name: 'Five', value: 5, suit: 'Hearts' }, { name: 'Five', value: 5, suit: 'Diamonds' }, 
         { name: 'Five', value: 5, suit: 'Clubs' },  { name: 'Five', value: 5, suit: 'Spades' },  
        { name: 'Six', value: 6, suit: 'Hearts' }, { name: 'Six', value: 6, suit: 'Diamonds' }, 
        { name: 'Six', value: 6, suit: 'Clubs' }, { name: 'Six', value: 6, suit: 'Spades' }, 
        { name: 'Seven', value: 7, suit: 'Hearts' }, { name: 'Seven', value: 7, suit: 'Diamonds' }, 
        { name: 'Seven', value: 7, suit: 'Clubs' }, { name: 'Seven', value: 7, suit: 'Spades' },   
         { name: 'Eight', value: 8, suit: 'Hearts' }, { name: 'Eight', value: 8, suit: 'Diamonds' }, 
        { name: 'Eight', value: 8, suit: 'Clubs' }, { name: 'Eight', value: 8, suit: 'Spades' }, 
        { name: 'Nine', value: 9, suit: 'Hearts' }, { name: 'Nine', value: 9, suit: 'Diamonds' }, 
        { name: 'Nine', value: 9, suit: 'Clubs' }, { name: 'Nine', value: 9, suit: 'Spades' },   
        { name: 'Ten', value: 10, suit: 'Hearts' },  { name: 'Ten', value: 10, suit: 'Diamonds' }, 
        { name: 'Ten', value: 10, suit: 'Clubs' }, { name: 'Ten', value: 10, suit: 'Spades' },           
        { name: 'Jack', value: 10, suit: 'Hearts' }, { name: 'Jack', value: 10, suit: 'Diamonds' }, 
        { name: 'Jack', value: 10, suit: 'Clubs' }, { name: 'Jack', value: 10, suit: 'Spades' },             
        { name: 'Queen', value: 10, suit: 'Hearts' }, { name: 'Queen', value: 10, suit: 'Diamonds' }, 
        { name: 'Queen', value: 10, suit: 'Clubs' }, { name: 'Queen', value: 10, suit: 'Spades' },            
        { name: 'King', value: 10, suit: 'Hearts' },  { name: 'King', value: 10, suit: 'Diamonds' }, 
        { name: 'King', value: 10, suit: 'Clubs' }, { name: 'King', value: 10, suit: 'Spades' },   
        { name: 'Ace', value: [1, 11], suit: 'Hearts' }, { name: 'Ace', value: [1, 11], suit: 'Diamonds' }, 
        { name: 'Ace', value: [1, 11], suit: 'Clubs' }, { name: 'Ace', value: [1, 11], suit: 'Spades' } ]    



def prompt(string)
  puts '=>' + string
end

def initialize_deck
  new_deck = []
  DECK.each { |card| new_deck << card }
  new_deck
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
  answer[0] == 'h' ? true : false
end

def determine_value(hand)
  non_ace_cards = hand.select { |card| card[:name] != 'Ace' }
  non_ace_cards_value = non_ace_cards.inject(0) { |sum, card| sum + card[:value] }
  
  ace_cards_value = 0
  ace_cards = hand.select { |card| card[:name] == 'Ace' }

  if ace_cards.size > 0
    ace_cards_value = determine_ace_value(ace_cards, non_ace_cards_value)
  end
  non_ace_cards_value + ace_cards_value
end

def determine_ace_value(ace_cards, non_ace_card_value)
  number_of_ace_cards = ace_cards.size
  number_of_ace_cards.times do |i|
    ace_value = (11 * (number_of_ace_cards - i)) + (1 * i)
    return ace_value if ace_value + non_ace_card_value <= 21
  end
  number_of_ace_cards
  # can probably simplify by as only 1 Ace can ever be worth 11. 
  # Check if (11 + # of ace cards - 1) + non-ace value <= 21 else return # of ace cards
end
  

# **algorithm**
# # find out total # of ace cards
# # use .times on ace cards 
# # each time mutiply 11 * (#acecards - i) + (1*i)
# # if that plus non_ace_card_value is <= 21 return value
# # else return #acecards
    

# p shuffled_deck[0..2]

# deal(shuffled_deck, 2) # => should return an array of two elements, each a hash
# deal(shuffled_deck, 1) # => should return an array of one element consisting of a hash

loop do
  shuffled_deck = initialize_deck.shuffle
  player_hand = []
  dealer_hand = []
  winner = ''
  
  #initial deal
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
      puts "You were dealt a #{player_hand[-1][:name]} for a total of #{player_total}."
      puts "You busted!"
      break
    end
    puts "Delear has: #{dealer_hand[1][:name]} of #{dealer_hand[1][:suit]} and an unknown card for a total of #{dealer_hand[1][:value]}" 
    puts "Player has: #{hand_as_string(player_hand)} for a total of #{player_total}"
    break if hit? != true
    deal_cards!(shuffled_deck, player_hand, 1)
  end
  
  dealer_total = determine_value(dealer_hand)
  
  loop do
    break if winner == 'Dealer'
    
    while dealer_total < 17 || dealer_total < player_total do 
      deal_cards!(shuffled_deck, dealer_hand, 1)
      
      dealer_total = determine_value(dealer_hand)
      
      puts "Dealer hits and draws a #{dealer_hand[-1][:name]} of #{dealer_hand[-1][:suit]}"
      puts "Dealer has: #{hand_as_string(dealer_hand)}"
      puts "Player has: #{hand_as_string(player_hand)}"
      puts "Dealer has a total of #{dealer_total} versus player total of #{player_total}"  
      puts ""
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
    
  # beginning dealer loop
  # loop do
  #   break if winner == 'Dealer'
  #   dealer_total = determine_value(dealer_hand)
    
  #   if dealer_total < 17
  #     deal_cards!(shuffled_deck, dealer_hand, 1)
  #     dealer_total = determine_value(dealer_hand)
  #     puts "Dealer hits and draws a #{dealer_hand[-1][:name]} of #{dealer_hand[-1][:suit]}"
  #     puts "Dealer has a total of #{dealer_total} versus player total of #{player_total}"
  #   elsif dealer_total > 21
  #     winner = 'Player'
  #     break
  #   elsif dealer_total <= 21 && dealer_total < player_total
  #     winner = 'Player'
  #     break
  #   elsif dealer_total <= 21 && dealer_total > player_total
  #     winner = 'Dealer'
  #     break
  #   end
  # end

  prompt "#{winner} is the winner!"
  prompt "Play again (y or n)?:"
  break unless gets.chomp.downcase[0] == 'y'
end


# **Algorithm**
# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.
