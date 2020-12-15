=begin
**Problem**
You're going to be given an array of integers. 
Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. 
If there is no index that would make this happn, return -1.


Rules:
Explicit
  - Input: an Array of integers
  - Output: an Integer representing an index position
  - find and return the index postion in which the sum of all integers to the right of the index are equal to the sum of all integers to the left of the index
  - this DOES NOT INCLUDE the index position itself

**Examples / Test Cases**
For example:
Let's say you are given the array [1, 2, 3, 4, 3, 2, 1]:
Your method will retrn the index 3, because at the 3rd positiion of the array, the sum of theleft side of the index [1,2,3] and the sum of the right side of te index [3,2,1] both equal 6.

Another one:
You are given the array [20, 10, -80, 10, 10, 15, 35]
At index 0 the left side is []
The right side is [10, -80, 10, 10 , 15, 35]
They both are qual to 0 whenadded. (empty arrays are equal to 0 in this problem)
Index 0 is the place where the left side and right side are equal.



**Data Structures**
- input Array
- output Integer

**Algorithm**
1. iterate over the input_array using #each_with_index
  - for each index split the array into two halves (0...index) & ((index + 1..-1))
  - check to see if the two halves are equal
  - if yes, then return index
2. if we iterate through the entire array and never return and index, then return -1



=end

def find_even_index(input_array)
  input_array.each_with_index do | _, index|
    if input_array[0...index].sum == input_array[(index + 1)..-1].sum
      return index
    else 
      next
    end
  end
  -1
end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51, 1, 1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
