# searching_101.rb

# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

array = []
last_number = nil

def add_number_to_array(array)
  array.push(gets.chomp.to_i)
end

puts "Enter the 1st number:"
add_number_to_array(array)

puts "Enter the 2nd number:"
add_number_to_array(array)

puts "Enter the 3rd number:"
add_number_to_array(array)

puts "Enter the 4th number:"
add_number_to_array(array)

puts "Enter the 5th number:"
add_number_to_array(array)

puts "Enter the last number:"
last_number = gets.chomp.to_i

if array.include?(last_number)
  puts "The number #{last_number} appears in #{array}"
else
  puts "The number #{last_number} does not appear in #{array}"
end