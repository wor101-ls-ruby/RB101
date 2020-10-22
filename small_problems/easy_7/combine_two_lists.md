**Problem**
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

Rules:
Explicit
  - Input: two Arrays 
  - Output: one Array
  - both input arrys have the same number of elements
  - both input arrays are non-empty
  - the combined array should contain all elements of the original two arrays
  - The order should alternate based on the array they originated from
Implicit
  - elements can be integers or strings, possibly others?
  - The first element at index 0 in the output array should be the first element from the first input array

**Examples / Test Cases**
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

**Data Structures**
- Arrays
- 

**Algorithm**
- Create an Array called combined_array that is empty
- Create Integer variable called combined_length and set it equal to double one of the input arrays length
- Create Integer variable called counter and set to 0
- iterate over the first array
  - set current element to combined_array at index position of current index plus counter
  - push << '' to next index
  - counter += 1
- set counter = 1
- terate over second array
  - set combined_array at index position of current index plus counter to the current element
  - counter +=1
  