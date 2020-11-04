**Problem**
Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

Rules:
Explicit
  - Input: a multi-dimensional array
  - Output: a one-dimensional array
  - each element of the input array contains a fruit and the quantity of that fruit
  - replace the quantity with the fruit that many times
Implicit
  - the output array should be one dimenisonal
  - each element of the input array contains a string (the fruit) and an integer (the quantity)

**Examples / Test Cases**
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

**Data Structures**
- Input multi-dimensional array
- Output one dimensional array of strings

**Algorithm**
- create a new Array with no elements
- iterate over the input array
  - for each element check the quantity element
  - push the fruit name to the output string that many times
- return the ouput array