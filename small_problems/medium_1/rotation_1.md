**Problem**
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Rules:
Explicit
  - Input: array
  - Output: array
  - do not use the #rotate or #rotate! methods
  - move first element of argument array to end of the array
  - do not modify the original array

**Examples / Test Cases**
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

**Data Structures**
- Input array
- Output array

**Algorithm**
1. iterate over input array
2. push each element after the first to a new array
3. push the first element to the new array last
4. return new array