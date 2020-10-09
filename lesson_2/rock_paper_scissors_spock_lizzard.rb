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

def win?(first, second)
  OUTCOMES[first].include?(second)
end

def display_results(player, computer)
  result = ''
  if win?(player, computer)
    result = "You won!"
  elsif win?(computer, player)
    result = "Computer won!"
  else
    result = "It's a tie!"
  end
  result
end

def update_score(player, computer, array)
  if win?(player, computer)
    array[0] += 1
  elsif win?(computer, player)
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
    puts "Invalid choice."
    puts "If using shorthand: #{VALID_SHORTHAND_CHOICES.keys.join(', ')}"
  end
end

prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")
puts ""

loop do # main loop
  prompt("The first player to 5 is the Grand Winner!")

  score = [0, 0]
  loop do # match loop, first to five is the winner
    choice = ''

    loop do # validate user input loop
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = Kernel.gets().chomp()
      choice = validate_choice(choice)
      break if choice
    end

    computer_choice = VALID_CHOICES.sample
    Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")
    puts display_results(choice, computer_choice)

    score = update_score(choice, computer_choice, score) # update score
    puts "Current Score: You #{score[0]} vs. Computer #{score[1]}"

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
