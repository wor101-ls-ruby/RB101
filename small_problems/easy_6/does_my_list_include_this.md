**Problem**
Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, 
false if it is not. You may not use the Array#include? method in your solution.

Rules:
Explicit
  - Input: array, search value
  - Output: boolean
  - may not use Array#include?
Implicit
  - nil can be an element and should return true if it is the search value
  - there will always be a search value given
  - an empty array != nil


**Examples / Test Cases**
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

**Data Structures**


**Algorithm**
- create Boolean variable called included and set to false
- iterate over input array and see if search value equals element
- if it does then set included to true and break