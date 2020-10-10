# sum_of_digits.rb

# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

def sum(int)
  int_array = int.to_s.split(//).map! {|string| string.to_i}  # could have used .chars instead of .split(//)
  int_array.reduce(:+)
end

def lesson_sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)  # use Rubys shorthand syntax for map to convert to integer
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45