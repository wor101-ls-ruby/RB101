
=begin
**Problem**
reverse the input arra without using the reverse metd

Rules:
Explicit
  - Input: an Array
  - Output: an Array

**Examples / Test Cases**



**Data Structures**


**Algorithm - 1(mutate)**
1. create variable index_switch and set equal to -1 
2. create a range from 0 to half the size of the array
3. iterate over the range
  - for each number in the range switch that element with the element at index_switch
  - index_switch -= 1
4. return the updated array

**Algorithm - 2(non-mutating)**
1. initalize a new variable called reversed_array to hold the return array
2. create a range from 1 to the length of the array
3. iterate over the range using the #each method
  - for each number in the range, use the negative value of tat integer as an index position
  - push the value of that index position to the reversed_array
4. return the array

**Algorithm - 3(non-mutating)**
1. Initalize a new variable called reversed_array to hold the return array
2. iterate over the input_array
  - for each element use the #unshift method to add the current element to the reversed_array
3. return the reversed_array

=end
require 'pry'

def reverse_array1(array)
  index_switch = -1
  
  (0...(array.size / 2)).each do |index|
    array[index], array[index_switch] = array[index_switch], array[index]
    index_switch -= 1
  end
  array
end

def reverse_array2(input_array)
  reversed_array = []
  
  (1..input_array.size).each do |index|
    reversed_array << input_array[(index * -1)]
  end
  reversed_array
end

def reverse_array3(input_array)
  reversed_array = []
  
  input_array.each { |element| reversed_array.unshift(element) }
  
  reversed_array
end




integers = (1..10).to_a

animals = %w(ape bobcat cat dog elephant falcon giraffe hipp iguana)

# reverse_array1(integers)
# reverse_array1(animals)

# p reverse_array2(integers)
# p reverse_array2(animals)

p reverse_array3(integers)
p reverse_array3(animals)