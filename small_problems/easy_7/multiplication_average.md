**Problem**
Write a method that takes an Array of integers as input, multiplies all the numbers together,
divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. 
Assume the array is non-empty.

Rules:
Explicit
  - Input: an Array of integers
  - Output: prints results to screen
  - Array alwasy contains at least 1 integers
  - multiply all integers together
  - divide result by number of entries in the Array
  - print the result rounded to 3 decimal places
Implicit
  - can one of the integers be 0?

**Examples / Test Cases**
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667


**Data Structures**
- Array of integers
- Float for the result

**Algorithm**
- Create new Float variable called result and set equal to 0
- Check if array contains any 0's. If so return result
- Use Enumerable#inject to multply all elements of the array together
- divide the resulting integer produced by #inject by the lenght of the array
- set result variable equalt to the outcome
- round the result to 3 decimal places

