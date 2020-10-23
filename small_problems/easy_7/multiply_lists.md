**Problem**
Write a method that takes two Array arguments in which each Array contains a list of numbers, 
and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. 
You may assume that the arguments contain the same number of elements.

Rules:
Explicit
  - Input: two Arrays, each which contains numbers
  - Output: one Array, with numbers for each element
  - each array has the same # of elements
  - return arrays elements are the products of each pair of numbers from the array arguments
  - return array will be the same length as the input arrays
Implicit
  - only integers in the array?

**Examples / Test Cases**
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


**Data Structures**
- three Arrays of the same length all containing integers
- 

**Algorithm**
- Create new Array called return array
- Iterate over the first input array
- for each element, multiply it by the element in the second inpu array at the same index
- push the result to the return array
- return the return array