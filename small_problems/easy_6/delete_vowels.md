**Problem**
Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

Rules:
Explicit
  - Input: array of strings
  - Output: array of strings
  - must remove each vowel from the output array
Implicit
  - is this returning the original array object or a new array object?
  - Going to assume its a new array object and not mutate the original
  - if all characters of a string are removed return a blank string
  - the input array will have 1 or more elements
  - the output array should have the same number of elements as the input array


**Examples / Test Cases**
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

**Data Structures**
array_of_strings = ['string1, 'string',etc]

**Algorithm**
- create a new_array 
- iterate throught the input_array
- for each string remove any vowels and push the modified string to new_array
- return the new_array