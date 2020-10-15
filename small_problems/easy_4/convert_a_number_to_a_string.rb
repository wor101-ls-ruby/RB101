# convert_a_number_to_a_string.rb

## In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

 # Write a method that takes a positive integer or zero, and converts it to a string representation.

 # You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. 
##Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

# -create a Global variable STRING_DIGITS that is a hash with integer keys and string values
# -turn integer into array using ::digits method and then reverse it using ::reverse! method
# -iterate over the array using .maps! and replace each int element with its string match from STRING_DIGITS
# -use ##join method to combine all elements into one string for return

STRING_DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(int)
  array = int.digits.reverse 
  array.map! { |int| int = STRING_DIGITS[int] }
  array.join
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'