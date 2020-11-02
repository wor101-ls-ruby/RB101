**Problem**
Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. 
The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

Rules:
Explicit
  - Input: two Integers
  - Output: Array 
  - first Integer argument is a count
  - Second Integer argument is first number of a sequence
  - Return array contains # of elements equal to the count argument
  - values of each element will be multiples of starting number
  - count will always be >= 0
  - starting number can be any valid integer


**Examples / Test Cases**
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

**Data Structures**



**Algorithm**
1. create an array 
2. multiply the 