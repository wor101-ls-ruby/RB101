**Problem**
Setup: the game consists of a "dealer" and a "player". Both participants are initially dealt 2 cards. 
The player can see their 2 cards, but can only see one of the dealer's cards.

Rules:
Explicit
  - Input: Array - deck of cards - each element is a hash representing a card ; 
           Integer - number of cards to be dealt
  - Output: Array - cards dealt - each card a hash
Implicit
  - the input Array must be mutated (i.e each card dealt must be removed from the original array)


**Examples / Test Cases**
Dealer has: Ace and unknown card
You have: 2 and 8

deal(shuffled_deck, 2) # => should return an array of two elements, each a hash
deal(shuffled_deck, 1) # => should return an array of one element consisting of a hash

**Data Structures**
- deck of cards - Array of hashes
 [{"2h"=>{:name=>"Two", :value=>2, :suit=>"Hearts"}}, 
{"2d"=>{:name=>"Two", :value=>2, :suit=>"Diamonds"}}, 
{"2c"=>{:name=>"Two", :value=>2, :suit=>"Clubs"}}, {"2s"=>{:name=>"Two", :value=>2, :suit=>"Spades"}}, 
{"3h"=>{:name=>"Three", :value=>3, :suit=>"Hearts"}}]

- dealt - array of cards
- 

**Algorith**
1. create a new array called dealt
2. remove a number of elements from the input array equal to the input intger 
3. push the removed elements to the array dealt
4. return dealt


