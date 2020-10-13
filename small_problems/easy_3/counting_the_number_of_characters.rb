# counting_the_number_of_characters.rb

## Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

print "Please write word or multiple words: "
user_input = gets.chomp
length = user_input.gsub(/\s/, '').length         # could have used String#delete to eleimnate all white space

puts "There are #{length} characters in '#{user_input}'."
