# convert_a_string_to_a_number.rb

## The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. 
 # String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

 # Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

 # For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

 # You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. 
 # Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.
 
 # STEPS
  # 1. pass string to method
  # 2. create an empty array that will hold single digit integers
  # CREATE SEPARATE METHOD THAT CHECKS CHARS AND RETURNS INTEGER
  # 3. use .each_char() method to invoke the CHARS TO INTEGER METHOD
  #   a. check for match against string versions of integers 0..9
  #   b. return integer version of string char
  # 
  # 4. .push() integer returned from method to the array
  # 5. Iterate over the array and based on the inddex multiply by 1, 10 ,100, 1000, etc to the integers in the array
  # 6. total all integers in the array
  # 7. return totaled amount

def char_to_integer(string)     # should have used a Hash to compare and return correct value. Way easier then using Case statement
  case string
  when '0' then 0
  when '1' then 1
  when '2' then 2
  when '3' then 3
  when '4' then 4
  when '5' then 5
  when '6' then 6
  when '7' then 7
  when '8' then 8
  when '9' then 9
  end
end

def array_to_total(array)         
  count = 1
  array.reverse!.map! do |int|
    int *= count
    count *= 10
    int
  end
  array.sum
end

# cuold have done the array_to_total method as below
#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value


def string_to_integer(string)
  array = []
  
  #convert each character into an integer and push to array
  string.each_char { |char| array.push(char_to_integer(char)) }
  
  #take integers in array, reverse, multiply by 10s and return total
  array_to_total(array)
  
end
 
 
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570


HEXADECIMAL_VALUES = { 
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
  'F' => 15
}

# -create an empty array that will be used to hold value of each hexadecimal character
# -use each-char method to iterrate over every char in hexadecimal 
#   -match the char with the key in hexadecimal_integer_hash and return the integer value
#   -.push the integer value into the array
# -create a sum variable = to 0
# - iterate over array sum = sum * 16 + the current element 

def hexadecimal_to_integer(hexadecimal)
  array = []
  hexadecimal.each_char { |char| array.push(HEXADECIMAL_VALUES[char.upcase]) }
  
  sum = 0
  array.each { |int| sum = sum * 16 + int }
  sum
end




p hexadecimal_to_integer('4D9f') == 19871
p hexadecimal_to_integer('Fa42') == 64066