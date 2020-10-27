**Problem 1**
Improved "join".
If we run the current game, we'll see the following prompt:

  => Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, 9

This is ok, but we'd like for this message to read a little better. We want to separate the last item with a "or", so that it reads:

  => Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, or 9

Currently, we're using the Array#join method, which can only insert a delimiter between the array elements, and isn't smart enough to display a joining word for the last element.
Write a method called joinor that will produce the following result:

Rules:
Explicit
  - Input: an array of integers, one or two optional string arguemnts
  - Output: string
  - Method accepts an array of integers
  - The method must return the integers as a single string with delimiters
Implicit
  - the array can be of various lengths
  - if no optional arguments are passed to the method, the return string will use ',' and 'or'
  - the first optional argument will be a the delimeter and defaults to ','or a 
  - the second optional argument will be the final delimeter and defaults to 'or;

**Examples / Test Cases**
joinor([1, 2])                   # => "1 or 2"
joinor([1, 2, 3])                # => "1, 2, or 3"
joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

**Data Structures**
- input array of integers [1, 2, 3, 4]
- optional string argument 1 ',' or ';'
- optional string argument 2 'and'
- return string

**Algorithm**
- create new String variable named joined_string
- iterate over the input_array
- for each element convert it to a string
- if the array is less than 3 elements long combine both elements with final delimeter
- if the array is more than 2 elements and this is not the final element add a delimeter and space
- if the array is more than 2 elements and this is the final element prepend the string number with the final delimeter 
- push the string to the joined_string variable
- return joined_string
- 


**Problem2**
Keep score of how many times the player and computer each win. Don't use global or instance variables. Make it so that the first player to 5 wins the game.

Rule:
Explicit
  - Input: array of 2 integers
  - Output: array of 2 integers
  - Do not use global or instance variables
  - First player to 5 wins is the winner
Implicit
  -

**Examples**

**Data Structures**
score = {'Player' => 0, 'Computer' => 0}

**Algorithm**
- create method called update_score()
  - update_score will update the score array by mutating the array
  - it will be passed the return value of detect_winner and the score hash
  - based on input it will update either the value of player or computer
- create a method called check for final_winner
  - it will take the score hash as an argument
  - if either the value of player or computer is 5 then it will return the key otherwise it will return nil
- if final_winner return is true then declare grand winner
- else repeate game loop
