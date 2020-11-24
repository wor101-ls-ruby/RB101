=begin
**Problem*
reverse the array without using the built in #reverse method

Rules:
Explicit
  - Input: Array
  - Output: Array
  - reverse the array (i.e first character is now last)
  - do not use the #reverse method
  
**Examples / Test Cases**

reverse_array([1,2,3,4]) == [4,3,2,1]

**Data Structures**
- Input Array
- Output Array


**Algorithm**
1. Initialize new return Array

3. Iterate over the input array
4. for each element pre-pend it to the return array

=end

def reverse_array(input_array)
  reversed_array = []
  
  input_array.each { |element| reversed_array.unshift(element) }
  
  reversed_array
end

def reverse_array_alt(input_array)
  return_array = []
  index = 0
  
  until index == input_array.size
    return_array << input_array[(-1 - index)]
    index += 1
  end
  return_array
end

array = (1..10).to_a

p reverse_array_alt(array)
