**Problem**
Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. 
To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

Note that balanced pairs must each start with a (, not a ).

Rules:
Explicit
  - Input: string
  - Output: boolean
  - return true if all parentheses are properly balanced
  - must occur in matching '(' and ')' pairs
  - each pair must start with '('
Implicit
  - assume every string has a parentheses


**Examples / Test Cases**
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

**Data Structures**
- input string
- output boolean
- array of characters
- 

**New&Improved Algorithm**
1. turn input string into an array of characters
2. create an array of only the parentheses
3. create return boolean
3. count number of '(' and ')'
4. if numbers are not equal set return false
5. if numbers are equal confirm first element is '(' and last element is ')'
  - if true then return true
  - if false then return false

**Algorithm**
1. turn input string into an array of characters
2. create return boolean and set to true
3. create a variable to track if parentheses is expected to be start or finish
3. iterate over the characters in the array
  - if char matches '(' or ')' then check start or finish variable
    - if char is ')' and start_finish is 'start' then set return boolean to false and break
    - if char is '(' and start_finish is 'finish' then set return boolean to false and break
    - else swap start variable and continue
4. once done iterating, if return boolean is false then return false
5. else check if the start_finish equals start
  - if yes then return true
  - if no then return false