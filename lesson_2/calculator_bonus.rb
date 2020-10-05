require "pry"
require 'yaml'

MESSAGES = YAML.load_file('calculator_messages.yml')

# calculator2.rb

# ask the user for two numnbers
# ask the user for an operation to perform
# perform the operation on the two number'
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  # create an array 0..9
  # turn num into an array of string characters 
  # iterate through the array of strings to check if each element is included in the number array
  #   if all are  included return num
  #   else return false
  valid = true
  number_array = ['0','1', '2', '3', '4', '5', '6', '7', '8', '9', '.']
  decimals = 0

  num.split(//).each { |x| number_array.include?(x) ? next : valid = false }
  num.split(//).each { |x| x == '.' ? decimals += 1 : next}
  
  if decimals > 1 then valid = false end
  
  valid ? (return num) : (return false)
end

def integer?(input)         # suggested integer validation in lesson
  input.to_i.to_s == input
end

def float?(input)           # suggested float validation in lesson
  input.to_f.to_s == input
end

def number?(input)          # suggested method for confirming input is valid number or float
  integer?(input) || float?(input)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt(MESSAGES['greeting'] + "#{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES['first_number_prompt'])
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['second_number_prompt'])
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  prompt(MESSAGES['operator_prompt'])

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES)
    end
  end

  prompt("#{operation_to_message(operator)} " + MESSAGES['operation'])

  result =  case operator
            when '1'
              number1.to_f() + number2.to_f()
            when '2'
              number1.to_f() - number2.to_f()
            when '3'
              number1.to_f() * number2.to_f()
            when '4'
              number1.to_f() / number2.to_f()
            end

  prompt(MESSAGES['result'] + " #{result}")

  prompt(MESSAGES['another_calculation'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['thanks'])
