# convert_a_signed_number_to_a_string.rb

## In the previous exercise, you developed a method that converts non-negative numbers to strings. 
 # In this exercise, you're going to extend that method by adding the ability to represent negative numbers 
 # as well.

 # Write a method that takes an integer, and converts it to a string representation.

 # You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), 
## Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

STRING_DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(int)
  array = int.digits.reverse 
  array.map! { |int| int = STRING_DIGITS[int] }
  string_of_int = ''
  array.each { |char| string_of_int << char}
  string_of_int
end

################################################################

# initiate a string variable called 'result'
# loop running divmod(10) on the number repeatedly. This grabs the last digit as a remainder
#  if 
# .prepend the remainder to the result after using it to call on the index location of digits that holds string matching its value

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def signed_integer_to_string(number)
  result = ''
  abs_number = number.abs
  loop do
    abs_number, remainder = abs_number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if abs_number == 0
  end
  if number < 0
    result.prepend('-')
  elsif number > 0
    result.prepend('+')
  end
  result
end

def signed_integer_to_string_lesson(number)
  case number <=> 0     # <=> returns +1 if greater than and -1 if less than
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

def signed_integer_to_string_refactored(number)
  abs_number = number.abs
  result = integer_to_string(abs_number)
  case number <=> 0
  when +1 then result.prepend('+')
  when -1 then result.prepend('-')
  else result
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
p signed_integer_to_string(4321) 
p signed_integer_to_string(-123) 
p signed_integer_to_string(0) 

puts ""
puts "refactored"
p signed_integer_to_string_refactored(-759)
p signed_integer_to_string_refactored(893)
p signed_integer_to_string_refactored(0)





# create array of digits in int using .digits()
# create variable is_negative that checks if element 0 in array == '-'
# if is_negative is truen then delete first element of array
# use .map! to iterate through array and find the matching key value in STRING_DIGITS and return the string value
# initiate string variable called string_of_int
# iterate through array using .each and push each element onto string_of_int
# return string of int  