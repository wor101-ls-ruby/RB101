**Problem**
How would you order this array of number strings by descending numeric value?

Rules:
Explicit
  - Input: array of strings 
  - Output: ordered array of strings
  - Do not use the #sort method
  - 

**Examples / Test Cases**
arr = ['10', '11', '9', '7', '8']

**Data Structures**
- array of strings
- 

**Algorithm**
- Create new variable Array called return_array
- Create neew Integer variable called index_position and set it to 0
- iterate over input_array
  - for each element, iterate over the entire array again
    - compare the element to every other element to see if it is less than that element
    - if it is less then index_position += 1
  - use th current element as the value of return array at index_position
  - set index_position to 0 and repeat
- return return_array