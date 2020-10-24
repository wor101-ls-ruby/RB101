**Problem**
Given the following data structure, return a new array containing the same sub-arrays as the original 
but ordered logically by only taking into consideration the odd numbers they contain.


**Examples / Test Cases**
answer == [[1, 8, 3], [1, 6, 7], [1, 4, 9]]


**Data Structures**
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]


**Algorithm**
- Iterate over the array
- create a temp array and make it blank
- for each sub-array sort the elements
- find the max element that is not even and add it to themp array along with the sub-array as a 2 element nested array
- Sort the temp array by the first element of each sub-array
- then push the 2nd element of each sub-array to the return array