# when_will_i_retire.rb

# Build a program that displays when the user will retire and how many years she has to work till retirement.

require 'date'

print "What is your age? "
current_age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

current_year = Date.today.year
retirement_year = current_year + (retirement_age - current_age)

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{retirement_age - current_age} years of work to go!"

#BLAHHH!!! APPARRENTLY TIME IS A METHOD :-( 
