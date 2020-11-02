**Problem**
Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, 
when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. 
Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

Rules:
Explicit
  - Input: an Array of 2+ elements, a Hash of two keys
  - Output: a string
  - array will have minimum of 2 elements
  - when the array's elements are combined with whitespace the produce a person's full name
  - the hash keys are :title and :occupation
  - Output string should gree person by full name and call out their title / occupation


**Examples / Test Cases**
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

**Data Structures**
- Array ['John', 'Q', 'Doe']
- Hash { title: 'Master', occupation: 'Plumber' }
- String
- 
**Algorithm**
- Create return string and set it equal to "Hello, "
- join the elements of the input arrray with whitepsace and push to the return string
- Add hash title and occupation to return string
- return string