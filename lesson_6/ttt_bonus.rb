require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagnols
score = {'Player' => 0, 'Computer' => 0}

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(input_array, delimeter = ', ', final_delimeter = 'or')
  joined_string = ''
  
  if input_array.length <= 2 
    return joined_string = input_array.join(' ' + final_delimeter + ' ')
  end
  
  input_array.each_with_index do |int, index|
    if input_array[index] != input_array.last 
      joined_string << int.to_s + delimeter
    else
      joined_string << final_delimeter + ' ' + int.to_s
    end
  end
  joined_string 
end


# rubocop:disable Metrics/AbcSize
def display_board(brd, current_score = {'Player' => 0, 'Computer' => 0})
  system 'clear'
  puts display_score(current_score)
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  if immediate_offense_defense(brd, COMPUTER_MARKER)
    square = immediate_offense_defense(brd, COMPUTER_MARKER)
  elsif immediate_offense_defense(brd, PLAYER_MARKER)
    square = immediate_offense_defense(brd, PLAYER_MARKER)
  elsif empty_squares(brd).include?(5)
    square = 5
  else
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def immediate_offense_defense(brd, marker)
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

# def immediate_defense(brd)
#   next_move = nil
#   WINNING_LINES.each do |winning_line|
#     if (brd[winning_line[0]] == 'X') && (brd[winning_line[1]] == 'X') && (brd[winning_line[2]] == ' ')
#       next_move = winning_line[2]
#     elsif (brd[winning_line[1]] == 'X') && (brd[winning_line[2]] == 'X') && (brd[winning_line[0]] == ' ')
#       next_move = winning_line[0]
#     end
#   end
#   next_move
# end

# def immediate_offense(brd)
#   next_move = nil
#   WINNING_LINES.each do |winning_line|
#     if (brd[winning_line[0]] == 'O') && (brd[winning_line[1]] == 'O') && (brd[winning_line[2]] == ' ')
#       next_move = winning_line[2]
#     elsif (brd[winning_line[1]] == 'O') && (brd[winning_line[2]] == 'O') && (brd[winning_line[0]] == ' ')
#       next_move = winning_line[0]
#     end
#   end
#   binding.pry
#   next_move
# end


def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # if brd[line[0]] == PLAYER_MARKER &&
    #   brd[line[1]] == PLAYER_MARKER &&
    #   brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #       brd[line[1]] == COMPUTER_MARKER &&
    #       brd[line[2]] == COMPUTER_MARKER
    #   return 'Computer'
    # end
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def update_score(winner, current_score)
  current_score[winner] += 1
end

def display_score(current_score)
  "Player #{current_score['Player']} vs. Computer #{current_score['Computer']}"
end

def final_winner(current_score)
  winner = nil
  current_score.each_pair { | player, score| winner = player if score == 5 }
  winner
end

# **Algorithm**
# - create method called update_score()
#   - update_score will update the score array by mutating the array
#   - it will be passed the return value of detect_winner and the score hash
#   - based on input it will update either the value of player or computer
# - create a method called check for final_winner
#   - it will take the score hash as an argument
#   - if either the value of player or computer is 5 then it will return the key otherwise it will return nil
# - if final_winner return is true then declare grand winner
# - else repeate game loop



loop do
  board = initialize_board
  
  
  
  loop do
    display_board(board, score)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board, score)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    update_score(detect_winner(board), score)
  else
    prompt "It's a tie!"
  end


  
  if final_winner(score)
    prompt display_score(score)
    prompt "#{final_winner(score)} is the Grand Winner!"
    prompt "Play again? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  else
    prompt display_score(score)
    prompt "Ready for the next match? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end

end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
