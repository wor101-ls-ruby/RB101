# string_strings.rb

## Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. 
 # The length of the string should match the given integer.

def stringy(int, zero_or_one = 1)
  string = ''
  if zero_or_one == 1
    int.times { |i| i.even? ? (string << '1') : (string << '0') }
  else
    int.times { |i| i.odd? ? (string << '1') : (string << '0') }
  end
  string
end





# all of the below should print true
puts stringy(6) == '101010' 
puts stringy(6) == '101010' 
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6,0) == '010101' 
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'