# You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits.

# 12 ==> 21
# 513 ==> 531
# 2017 ==> 2071
# If no bigger number can be composed using those digits, return -1:

# 9 ==> -1
# 111 ==> -1
# 531 ==>-1
=begin
**Problem**
You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits.


Rules:
Explicit
  - Input: a positive Integer
  - Output: a positive Integer or -1

**Examples / Test Cases**
12 ==> 21
513 ==> 531
2017 ==> 2071
If no bigger number can be composed using those digits, return -1:

9 ==> -1
111 ==> -1
531 ==>-1


**Data Structures**
- input Integer
- output Integer

**Algorithm**
1. initialize an Array variable to hold digits
2. convert the input integer into an array of characters/digits
3. iterate through the Array from end to beginning
  - if the 2nd to last digit is less than the last, swap
  - repeat for adjacent digits as you iterate from end to begining
  - if a swap is made break
4. if array was changed the rejoin it and return it
5. otherwise return -1
  
Option2:
1. conver the input integer into a string
2. if size is 1 then return -1
3. otherwise swap the last two characters
4. reconvert to integer and see if it is greater than the original
5. if so return it

Option3:
1. Create range of number up to max number that can be crated by digits
2. iterate through the range and check to see if any of the numbers include ALL the digits of the input
3. if so return that number
4. if not return -1


=end

# def next_bigger_num(integer)
#   integer_array = integer.to_s.chars
  
#   return -1 if integer_array.size == 1
  
#   counter = -1
#   until counter.abs >= integer_array.size
#     if integer_array[counter - 1].to_i < integer_array[counter].to_i
#       integer_array[counter - 1], integer_array[counter] = integer_array[counter], integer_array[counter - 1]
#       break
#     else
#       counter -= 1
#     end     
#   end
  
#   integer_array.join.to_i > integer ? integer_array.join.to_i : -1
# end

def next_bigger_num(integer)
  max_integer = integer.to_s.chars.map { |char| char.to_i }.sort.reverse.map { |int| int.to_s }.join.to_i

  
  next_biggest = -1
  
  (integer..max_integer).each do |number|
   number_digits = number.to_s.chars
   integer_digits = integer.to_s.chars
    
   if number_digits.sort == integer_digits.sort && number > integer
     next_biggest = number
     break
   end    
  end

  p next_biggest
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
p next_bigger_num(2071) == 2107
