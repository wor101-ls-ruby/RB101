# The maximum sum subarray problem consists in finding the maxium sum of a contiguous sequence in an array of integers:

# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# -- should be 6: [4, -1, 2, 1]
# Easy case is when the array is made up of only positive numbers and the maximum sum is the sum of the whole array. 
# If the array is made up of only negatie numbers, return 0 instead.

# Empty array is considered to have zero greatest sum. Note that the empty array is also a valid subarray.

=begin
**Problem**
The maximum sum subarray problem consists in finding the maxium sum of a contiguous sequence in an array of integers:

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
-- should be 6: [4, -1, 2, 1]

Easy case is when the array is made up of only positive numbers and the maximum sum is the sum of the whole array. 
If the array is made up of only negatie numbers, return 0 instead.

Empty array is considered to have zero greatest sum. Note that the empty array is also a valid subarray.


Rules:
Explicit
  - Input: an Array of integers (could be empty)
  - Output: an Integer
  - find the max sum of a contiguous sequence in the array
  - if the array consists of all postive #'s then it will be the sum of the whole array
  - if the array consists of all negative numbers or is empty, return 0
  

**Examples / Test Cases**
p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12



**Data Structures**
- input Array
- output Integer


**Algorithm**
1. intialize a variable to hold the current maximum sum
2. if array is size 0 return 0
3. if all elements in the array are negative return 0
4. otherwise, iterate over the input array
  - for each digit iterate check the sum of it plus a combination of all remaining elements to see if it is greater than the current max sum
  - if any of the combinations is greater, than update the max sum with the new sum
5. return the maximum sum

=end

def max_sequence(array)
  maximum_sum = 0
  
  return 0 if array.size == 0
  return 0 if array.all? { |number| number < 0 }
  return array.sum if array.all? { |number| number > 0 }
  
  
  array.each_with_index do |number, index|
    
    counter = 1
    until (counter + index) >= (array.size)
      if array[index..(index + counter)].sum > maximum_sum
        maximum_sum = array[index..(index + counter)].sum
      end
      counter += 1      
    end   
    
  end
  
  p maximum_sum
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

