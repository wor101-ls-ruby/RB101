**Problem**
A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

Rules
Explicit
  - Input: string
  - Output: boolean
  - only 1 letter from each block can be used to spell word
Implicit
  - case doesn't matter

**Examples / Test Cases**
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

**Data Structures**
- Nested array of blocks [letter1, letter2, boolean]
- Input string
- Outut Boolean

**Algorithm**
1. Create block variable to store
2. Iterate over each charcter from the input string
  - check each block to see if it contains the character
  - if it does, check the thir element of the array to see if it is true or false
  - if true,change the third element of the block array to false and go to next character
  - if false, word cannot be completed and return false
3. return true unless false was returned in step 2