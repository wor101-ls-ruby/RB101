WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagnols
                
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
                
def immediate_defense(brd, marker)
  next_move = nil
  WINNING_LINES.each do |winning_line|
    if (brd[winning_line[0]] == marker) && (brd[winning_line[1]] == marker) && (brd[winning_line[2]] == INITIAL_MARKER)
      next_move = winning_line[2]
    elsif (brd[winning_line[1]] == marker) && (brd[winning_line[2]] == marker) && (brd[winning_line[0]] == INITIAL_MARKER)
      next_move = winning_line[0]
    end
  end
  next_move
end







# **Algorithm**
# - method immediate_defense takes current board state (board) as an argument
# - it then iterates through the global variable WINNING_LINES
#   - for each array in winning lines it checks if checks the values of the associated keys in board
#   - IF the associated values at index 0 and 1 are equal to 'X' AND index 2 equals ' ' then return WINNING_LINES value at element 3
#   - ELSIF associated values at index 1 and 2 equal 'X" AND index 0 equals ' ' then return WINNING_LINES value at element 0
#   - ELSE return nil
#   -



p immediate_defense( {1 => 'X', 2 => 'X', 3 => ' ', 4 => ' ', 5 => ' ',
         6 => ' ', 7 => ' ', 8 => ' ', 9 => ' '
}, PLAYER_MARKER ) #== 3

p immediate_defense( {1 => ' ', 2 => ' ', 3 => ' ', 4 => ' ', 5 => 'X',
         6 => ' ', 7 => ' ', 8 => 'X', 9 => ' '
}, PLAYER_MARKER )# == 2

p immediate_defense( {1 => ' ', 2 => ' ', 3 => ' ', 4 => ' ', 5 => 'X',
         6 => ' ', 7 => 'X', 8 => ' ', 9 => ' '
}, PLAYER_MARKER )# == 3

p immediate_defense( {1 => ' ', 2 => ' ', 3 => 'O', 4 => ' ', 5 => 'X',
         6 => ' ', 7 => 'X', 8 => ' ', 9 => ' '
}, PLAYER_MARKER ) #== nil

p immediate_defense( {1 => 'X', 2 => ' ', 3 => ' ', 4 => ' ', 5 => 'X',
         6 => ' ', 7 => ' ', 8 => ' ', 9 => ' '
}, PLAYER_MARKER ) #== 9