# arithmetic_integer.rb

## Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: 
 # addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.
 
puts "==> Enter the first number:"
number1 = gets.chomp.to_i
 
puts "==> Enter the second number:"
number2 = gets.chomp.to_i
 
puts "#{number1} + #{number2} = #{number1 + number2}"
puts "#{number1} - #{number2} = #{number1 - number2}"
puts "#{number1} * #{number2} = #{number1 * number2}"
puts "#{number1} / #{number2} = #{number1 / number2}"
puts "#{number1} % #{number2} = #{number1 % number2}"
puts "#{number1} ** #{number2} = #{number1 ** number2}"
