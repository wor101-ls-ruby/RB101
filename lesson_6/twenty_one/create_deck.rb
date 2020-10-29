def create_deck
  deck = []
  names = ('2'..'10').to_a + %w(Jack Queen King Ace)
  suits = %w(Hearts Diamonds Clubs Spades)
  names.each do |name|
    suits.each do |suit|
      hash = {}
      hash[:name] = name
      hash[:suit] = suit
      if ('2'..'10').include?(name)
        hash[:value] = name.to_i
      elsif %w(Jack Queen King).include?(name)
        hash[:value] = 10
      else
        hash[:value] = [1, 11]
      end
      deck << hash
    end
  end
  deck
end

# { name: 'Ace', value: [1, 11], suit: 'Spades' } 


# create_deck.each { |card| puts card }
create_deck.size
p create_deck

non_ace_cards = create_deck.select { |card| card[:name] != 'Ace' }
# non_ace_cards_value = non_ace_cards.inject(0) { |sum, card| sum + card[:value] }
p non_ace_cards