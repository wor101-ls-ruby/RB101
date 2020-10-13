require "pry"

VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

VALID_SHORTHAND_CHOICES = { 'r' => 'rock',
                            'p' => 'paper',
                            'sc' => 'scissors',
                            'l' => 'lizard',
                            'sp' => 'spock' }

OUTCOMES = {  'rock' => ['lizard', 'scissors'],
              'paper' => ['rock', 'spock'],
              'scissors' => ['paper', 'lizard'],
              'lizard' => ['spock', 'paper'],
              'spock' => ['scissors', 'rock'] }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def first_player_win(first, second)
  OUTCOMES[first].include?(second)
end

def display_win_lose_or_tie(player, computer)
  result = ''
  if first_player_win(player, computer)
    result = "You won!"
  elsif first_player_win(computer, player)
    result = "Computer won!"
  else
    result = "It's a tie!"
  end
  result
end

def display_outcome(choice, computer_choice)
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
  prompt(display_win_lose_or_tie(choice, computer_choice))
end

def update_score(player, computer, array)
  if first_player_win(player, computer)
    array[0] += 1
  elsif first_player_win(computer, player)
    array[1] += 1
  end
  array
end

def validate_choice(string)
  if VALID_CHOICES.include?(string)
    string
  elsif VALID_SHORTHAND_CHOICES.key?(string)
    VALID_SHORTHAND_CHOICES[string]
  else
    clear_screen
    prompt("Invalid choice.")
    prompt("If using shorthand: #{VALID_SHORTHAND_CHOICES.keys.join(', ')}")
  end
end

def initialize_score
  clear_screen
  score = [0, 0]
  score
end 

def clear_screen
  system('clear') || system('cls')
end

def display_welcome(name)
  prompt("Hi #{name}!")
  prompt("The first player to 5 is the Grand Winner!")
end

def display_title_screen
  clear_screen
  prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")
  puts ""
end 

def initialize_player_name
  prompt("Please enter your name:")
  name = gets.chomp
  return name
end

display_title_screen
player_name = initialize_player_name


loop do # main loop
  score = initialize_score
  display_welcome(player_name)
  
  loop do # match loop, first to five is the winner
    choice = ''

    loop do # validate user input loop
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = Kernel.gets().chomp()
      choice = validate_choice(choice)
      break if choice
    end
    
    clear_screen
    
    computer_choice = VALID_CHOICES.sample
    display_outcome(choice, computer_choice)

    score = update_score(choice, computer_choice, score) # update score
    prompt("Current Score: You #{score[0]} vs. Computer #{score[1]}")

    if score[0] == 5
      prompt("You are the Grand Winner!")
      break
    elsif score[1] == 5
      prompt("The computer is the Grand Winner!")
      break
    end
  end
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing! Goodbye!")
