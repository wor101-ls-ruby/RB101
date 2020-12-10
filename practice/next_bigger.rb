=begin
**Problem**
# You have to create a function that takes a positive integer number and returns the next bigger number formed by the same digits:
#
# 12 ==> 21
# 513 ==> 531
# 2017 ==> 2071
#
# If no bigger number can be composed using those digits, return -1:
#
# 9 ==> -1
# 111 ==> -1
# 531 ==> -1

Rules:
Explicit
  - Input: a postive Integer
  - Output: a postive Integer or -1
  - return the next bigger number formed by the digits of the input integer

**Examples / Test Cases**
# 12 ==> 21
# 513 ==> 531
# 2017 ==> 2071
# 9 ==> -1
# 111 ==> -1
# 531 ==> -1



**Data Structures**
- input Integer
- output Integer
- Array of digits

**Algorithm**
1. Initialize an variable to hold the next highest value
2. Find the maximum value that can be created from the input integer
  - turn the input integer into an array of string characters
  - convert each element into an integer
  - sort the array in reverse order
  - convert each element back to a string
  - join the array and convert it into an integer
2. If the maximum value is equal to the input integer return -1
3. create a range from the input integer to the maximum value
4. iterate over the range 
  - return the current_number if all the digits are included in the original input 
    - turn the input integer into an array of string characters called input_array and sort it
    - turn the current_number into an array of string characters called current_number_array and sort it
    - if the current_number_array equals the input_array return true

=end

def find_max(integer)
  digits = integer.to_s.chars.map { |char| char.to_i }
  digits.sort.reverse.map { |digit| digit.to_s }.join.to_i

end

def includes_digits(current_number, integer)
  input_array = integer.to_s.chars.sort
  current_number_array = current_number.to_s.chars.sort
  
  input_array == current_number_array
  

end

def next_bigger(integer)
  maximum_value = find_max(integer)
  next_integer = -1
  
  return next_integer if maximum_value == integer
  
  ((integer + 1)..maximum_value).each do |current_number|
      if includes_digits(current_number, integer)
        next_integer = current_number
        break

      end
      
    
  end
  
p next_integer
end

p next_bigger(12) == 21
p next_bigger(513) == 531
p next_bigger(2017) == 2071
p next_bigger(414) == 441
p next_bigger(144) == 414
p next_bigger(9) == -1
p next_bigger(111) == -1
p next_bigger(531) == -1