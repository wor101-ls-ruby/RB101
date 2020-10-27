WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagnols
                
def immediate_offense(brd)
  next_move = nil
  WINNING_LINES.each do |winning_line|
    if (brd[winning_line[0]] == 'O') && (brd[winning_line[1]] == 'O') && (brd[winning_line[2]] == ' ')
      next_move = winning_line[2]
    elsif (brd[winning_line[1]] == 'O') && (brd[winning_line[2]] == 'O') && (brd[winning_line[0]] == ' ')
      next_move = winning_line[0]
    end
  end
  next_move
end





p immediate_offense( {1 => 'O', 2 => 'O', 3 => ' ', 4 => ' ', 5 => ' ',
         6 => ' ', 7 => ' ', 8 => ' ', 9 => ' '
} ) #== 3

p immediate_offense( {1 => ' ', 2 => ' ', 3 => ' ', 4 => ' ', 5 => 'O',
         6 => ' ', 7 => ' ', 8 => 'O', 9 => ' '
} )# == 2

p immediate_offense( {1 => ' ', 2 => ' ', 3 => ' ', 4 => ' ', 5 => 'O',
         6 => ' ', 7 => 'O', 8 => ' ', 9 => ' '
} )# == 3

p immediate_offense( {1 => ' ', 2 => ' ', 3 => 'X', 4 => ' ', 5 => 'O',
         6 => ' ', 7 => 'O', 8 => ' ', 9 => ' '
} ) #== nil

p immediate_offense( {1 => 'O', 2 => ' ', 3 => ' ', 4 => ' ', 5 => 'O',
         6 => ' ', 7 => ' ', 8 => ' ', 9 => ' '
} ) #== 9