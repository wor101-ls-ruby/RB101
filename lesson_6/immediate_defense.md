**Problem**
The computer currently picks a square at random. That's not very interesting. 
Let's make the computer defensive minded, so that if there's an immediate threat, then it will defend the 3rd square. 
We'll consider an "immediate threat" to be 2 squares marked by the opponent in a row. 
If there's no immediate threat, then it will just pick a random square.

Rules:
Explicit
  - Input: board - a hash
  - Output: integer - representing board space 
  - if two winning squares in a row are marked by the Player the computer will choose the 3rd
  - else the computer chooses a square at random

**Examples / Test Cases**
immediate_defense( {1 => 'X', 2 => 'X', 3 => ' ', 4 => ' ', 5 => ' ',
         6 => ' ', 7 => ' ', 8 => ' ', 9 => ' '
} ) == 3

immediate_defense( {1 => ' ', 2 => ' ', 3 => ' ', 4 => ' ', 5 => 'X',
         6 => ' ', 7 => ' ', 8 => 'X', 9 => ' '
} ) == 2

immediate_defense( {1 => ' ', 2 => ' ', 3 => ' ', 4 => ' ', 5 => 'X',
         6 => ' ', 7 => 'X', 8 => ' ', 9 => ' '
} ) == 3


**Data Structures**
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagnols
                
board = {1 => ' ', 2 => ' ', 3 => ' ', 4 => ' ', 5 => ' ',
         6 => ' ', 7 => ' ', 8 => ' ', 9 => ' '
} 

**Algorithm**
- method immediate_defense takes current board state (board) as an argument
- it then iterates through the global variable WINNING_LINES
  - for each array in winning lines it checks if checks the values of the associated keys in board
  - IF the associated values at index 0 and 1 are equal to 'X' AND index 2 equals ' ' then return WINNING_LINES value at element 3
  - ELSIF associated values at index 1 and 2 equal 'X" AND index 0 equals ' ' then return WINNING_LINES value at element 0
  - ELSE return nil
  -