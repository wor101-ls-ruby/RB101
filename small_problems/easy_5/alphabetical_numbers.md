**Problem**
Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Rules:
Explicit
  - Input: Array of Integers between 0..19
  - Output: Array of Integers between 0..19
  - All input integers will be between 0 and 19
  - Input array is sorted alphabetically by English word for each number
Implicit
  - There can be duplicate numbers in the array?
    - can the return array return the same value 
  - The input array can be in any order
  - Is this returning a new array or mutating the original?


**Examples / Test Cases**
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

**Data Structures**
- Input Array of Integers between 0..19
- Output Array of Integers between 0..19
- Nested Array of Integers 
  nested = [[orig_int, 'English'], [orig_int, 'English']]

- Global Hash where key is an integer of 1..19 and the string is the English version


ENGLISH_NUMBERS = { 0 => 'zero', 1 => 'one', 2 => 'two', etc }

**Algorithm**
- Iterate over the input array
  - for each element find its value in the ENGLISH_NUMBERS hash
  - combine the value and element into a two element array with the value being the first element
  - push that array to the nested array
- sort the nested array so it is alphabetical by the first element of the nested array
- iterate over the nested array
  - push the 2nd element of each nested array to the return array
- return the return array