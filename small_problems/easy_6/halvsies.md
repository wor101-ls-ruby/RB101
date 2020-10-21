**Problem**
Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) 
that contain the first half and second half of the original Array, respectively. If the original array 
contains an odd number of elements, the middle element should be placed in the first half Array.

Rules:
Explicit
  - Input: an array
  - Output: a nested pair of arrays
  - first array should contain frist half of original array
  - 2nd array should contain second half of original array
  - if odd number of elements, put middle element in first array
Implicit
  - if there is only 1 element then the second array will be empty
  - if there are no elements in the oriinal array then both arrays will be empty

**Examples / Test Cases**
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

**Data Structures**
Arrays!!

**Algorithm**
- create a new array
- get the length of the input_array
- use .split method to put first half of input array into new array
- use .split again to put second half into new array