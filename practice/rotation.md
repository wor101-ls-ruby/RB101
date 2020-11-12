**Problem**
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Rules:
Explicit
  - Input: array
  - Output: a new array
  - do not use Array#rotate or Array#rotate!
  - move first element to the end of the array
  - original array should not be changed

**Examples / Test Cases**
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

**Algorithm**
1. create a new array to be returned
2. add elements of input array to new array
3. switch first and last element of return array