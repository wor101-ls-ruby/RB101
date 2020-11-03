**Problem**
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. 
You may assume that the argument will always be an odd integer.

Rules:
Explicit
  - Input: an odd Integer
  - Output: 4 pointed diamond in an n x n grid
  - input will always be an odd integer
Implicit
  - input will always allow diamond to be visible on screen width

**Examples / Test Cases**
diamond(1)

*

diamond(3)

 *
***
 *
 
 
 diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
    
**Data Structures**
- Input integer
- An array of strings?
- 

**Algorithm**
1. Create a blank array 
2. Set array to have elements equal to the input integer
3. iterate over the array with index
4. until index >= inpt / 2 
    string equals index times 2 many '*' plus '*'
5. when index >= input / 2
    create new array and reverse current one
    append it to the array
6. print each element of array