**Problem**
You start with a normal 52-card deck consisting of the 4 suits (Hearts, Diamonds, Clubs, and Spades), and 13 values (2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace).

The goal of Twenty-One is to try to get as close to 21 as possible, without going over. If you go over 21, it's a "bust" and you lose.

Setup: the game consists of a "dealer" and a "player". Both participants are initially dealt 2 cards. The player can see their 2 cards, but can only see one of the dealer's cards.

Card values: all of the card values are pretty straightforward, except for the ace. The numbers 2 through 10 are worth their face value. The jack, queen, and king are each worth 10, and the ace can be worth 1 or 11. The ace's value is determined each time a new card is drawn from the deck. For example, if the hand contains a 2, an ace, and a 5, then the total value of the hand is 18. In this case, the ace is worth 11 because the sum of the hand (2 + 11 + 5) doesn't exceed 21. Now, say another card is drawn and it happens to be an ace. Your program will have to determine the value of both aces. If the sum of the hand (2 + 11 + 5 + 11) exceeds 21 then one of the aces must be worth 1, resulting in the hand's total value being 19. What happens if another card is drawn and it also happens to be an ace? It can get tricky if there are multiple aces in a hand, so your program must account for that.

Card	Value
2 - 10	face value
jack, queen, king	10
ace	1 or 11
Player turn: the player goes first, and can decide to either "hit" or "stay". A hit means the player will ask for another card. Remember that if the total exceeds 21, then the player "busts" and loses. The decision to hit or stay will depend on what the player's cards are and what the player thinks the dealer has. For example, if the dealer is showing a "10" (the other card is hidden), and the player has a "2" and a "4", then the obvious choice is for the player to "hit". The player can continue to hit as many times as they want. The turn is over when the player either busts or stays. If the player busts, the game is over and the dealer won.

Dealer turn: when the player stays, it's the dealer's turn. The dealer must follow a strict rule for determining whether to hit or stay: hit until the total is at least 17. If the dealer busts, then the player wins.

Comparing cards: when both the player and the dealer stay, it's time to compare the total value of the cards and see who has the highest value.


**Examples / Test Cases**
Scenario 1
  Dealer has: Ace and unknown card
  You have: 2 and 8
  
  You should "hit" in this scenario. You see the dealer has an "Ace", which means the dealer has a high probability of having a 21, the optimal number. 
  On top of that, your total of 10 can only benefit from an extra card, as there's no way you can bust.
  
Scenario 2
  Dealer has: 7 and unknown card
  You have: 10 and 7
  
  You should "stay" here, because chances are good that the unknown card is not an Ace, which is the only situation where you can lose. 
  Most likely, you're going to win with 17, or tie. There's a very small chance you will lose.
  
Scenario 3
  Dealer has: 5 and unknown card
  You have: Jack and 6
  
  This one is a little tricky, and at first glance, you may think that either a "hit" or "stay" would be appropriate. 
  You have 16 and you could maybe try to get lucky and land a card less than 6. That would be ok reasoning, except for the fact that the dealer has a 5. 
  You're anticipating that the unknown card is worth 10, thereby making the dealer's cards worth 15. This means the dealer must hit, and there's a good chance the dealer will bust. 
  The best move here is to "stay", and hope the dealer busts.

**Data Structures**
DECK = { 2h: { name: 'Two', value: 2, suit: 'Hearts' }, 2d: { name: 'Two', value: 2, suit: 'Diamonds' }, 
         2c: { name: 'Two', value: 2, suit: 'Clubs' }, 2s: { name: 'Two', value: 2, suit: 'Spades' }, 
         3h: { name: 'Three', value: 3, suit: 'Hearts' }, 3d: { name: 'Three', value: 3, suit: 'Diamonds' }, 
         3c: { name: 'Three', value: 3, suit: 'Clubs' }, 3s: { name: 'Three', value: 3, suit: 'Spades' }, 
         4h: { name: 'Four', value: 4, suit: 'Hearts' }, 4d: { name: 'Four', value: 4, suit: 'Diamonds' }, 
         4c: { name: 'Four', value: 4, suit: 'Clubs' }, 4s: { name: 'Four', value: 4, suit: 'Spades' },          
         5h: { name: 'Five', value: 5, suit: 'Hearts' }, 5d: { name: 'Five', value: 5, suit: 'Diamonds' }, 
         5c: { name: 'Five', value: 5, suit: 'Clubs' }, 5s: { name: 'Five', value: 5, suit: 'Spades' },  
         6h: { name: 'Six', value: 6, suit: 'Hearts' }, 6d: { name: 'Six', value: 6, suit: 'Diamonds' }, 
         6c: { name: 'Six', value: 6, suit: 'Clubs' }, 6s: { name: 'Six', value: 6, suit: 'Spades' }, 
         7h: { name: 'Seven', value: 7, suit: 'Hearts' }, 7d: { name: 'Seven', value: 7, suit: 'Diamonds' }, 
         7c: { name: 'Seven', value: 7, suit: 'Clubs' }, 7s: { name: 'Seven', value: 7, suit: 'Spades' },   
         8h: { name: 'Eight', value: 8, suit: 'Hearts' }, 8d: { name: 'Eight', value: 8, suit: 'Diamonds' }, 
         8c: { name: 'Eight', value: 8, suit: 'Clubs' }, 8s: { name: 'Eight', value: 8, suit: 'Spades' }, 
         9h: { name: 'Nine', value: 9, suit: 'Hearts' }, 9d: { name: 'Nine', value: 9, suit: 'Diamonds' }, 
         9c: { name: 'Nine', value: 9, suit: 'Clubs' }, 9s: { name: 'Nine', value: 9, suit: 'Spades' },   
         10h: { name: 'Ten', value: 10, suit: 'Hearts' }, 10d: { name: 'Ten', value: 10, suit: 'Diamonds' }, 
         10c: { name: 'Ten', value: 10, suit: 'Clubs' }, 10s: { name: 'Ten', value: 10, suit: 'Spades' },           
         jackh: { name: 'Jack', value: 10, suit: 'Hearts' }, jackd: { name: 'Jack', value: 10, suit: 'Diamonds' }, 
         jackc: { name: 'Jack', value: 10, suit: 'Clubs' }, jacks: { name: 'Jack', value: 10, suit: 'Spades' },             
         queenh: { name: 'Queen', value: 10, suit: 'Hearts' }, queend: { name: 'Queen', value: 10, suit: 'Diamonds' }, 
         queenc: { name: 'Queen', value: 10, suit: 'Clubs' }, queens: { name: 'Queen', value: 10, suit: 'Spades' },            
         kingh: { name: 'King', value: 10, suit: 'Hearts' }, kingd: { name: 'King', value: 10, suit: 'Diamonds' }, 
         kingc: { name: 'King', value: 10, suit: 'Clubs' }, kings: { name: 'King', value: 10, suit: 'Spades' },   
         aceh: { name: 'Ace', value: [1, 11], suit: 'Hearts' }, aced: { name: 'Ace', value: [1, 11], suit: 'Diamonds' }, 
         acec: { name: 'Ace', value: [1, 11], suit: 'Clubs' }, aces: { name: 'Ace', value: [1, 11], suit: 'Spades' }            
         
         
Hearts, Diamonds, Clubs, Spades
Card	Value
2 - 10	face value
jack, queen, king	10
ace	1 or 11
**Algorithm**
1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.




