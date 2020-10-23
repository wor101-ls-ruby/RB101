**Problem**
Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. 
You may assume that the Array always contains at least one number.

Rules:
Explicit
  - Input: an Array containing numbers
  - Output: a number
  - the argument array always contains at least one number
  - return number is the sum of sums of each leading subsequence for the argument array
Implicit
  - a single number array will returns its own value
  - the numbers are integers not floats?

**Examples / Test Cases**
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35


**Data Structures**
- Input array
- Output integers
- 
**Algorithm**
- Create new Integer variable called result_sum and set it to 0
- Create a new Integer variable named counter and set it to 0
- Iterate over the array
  - create a new Array called temp_array
  - temp_array is a copy of the argument array but ONLY with elements up to index of counter
  - sump the temp array 
  - result_sum += the sump of the temp_array
- return the result_sum