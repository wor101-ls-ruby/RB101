# convert_a_string_to_a_signed_number.rb

## In the previous exercise, you developed a method that converts simple numeric strings to Integers. 
 # In this exercise, you're going to extend that method to work with signed numbers.

 # Write a method that takes a String of digits, and returns the appropriate number as an integer. 
 # The String may have a leading + or - sign; 
 # if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. 
 # If no sign is given, you should return a positive number.

 # You may assume the string will always contain a valid number.

 # You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. 
## You may, however, use the string_to_integer method from the previous lesson.

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  array = []
  sum = 0
  string.each_char { |char| array.push(DIGITS[char]) }
  array.each { |int| sum = sum * 10 + int }
  sum
end

# - use .include() to see if string includes a + or -
#   -if includes either + or - then create new string with delete_prefix 
#   -send new string to the string_to_integer_method
#   -if prefix was - then multiple return by -1 else use value returned by method
# -else send to string_to_integer method

def string_to_signed_integer(string)
  if string.include?('-')           # to look at just the first character write as string[0]
    string_to_integer(string.delete_prefix('-')) * -1 # don't need to multiply by -1. instead prefix the statement with a - sign i.e  -string_to_integer(string.delete_prefix('-'))
  elsif string.include?('+')
    string_to_integer(string.delete_prefix('+'))      # instead of deleting prefix can use string[1..-1] which will select all of the string from element 1 to the last element
  else
    string_to_integer(string)
  end
end



p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100


def string_to_signed_integer_refactored(string)
  if string[0] == '-' || string[0] == '+'  
    prefix = string[0]
    string = string[1..-1]
  else
    prefix ='+'
  end
  integer = string_to_integer(string)
  prefix == '+' ? integer : -integer
end


p string_to_signed_integer_refactored('4321') == 4321
p string_to_signed_integer_refactored('-570') == -570
p string_to_signed_integer_refactored('+100') == 100