**Problem**
A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

Rules:
Explicit
  - Input: string
  - Output: boolean
  - return true if input word can be spelled using only 1 letter per pair

**Examples**
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

**Data Structures**
- Nested array [['B', 'O'], ['X', 'K'], ['D','Q']]

**Algorithm**
- iterate over every charcter in the input string
- for each character check if there is a match in the spelling bock array
- if a match then remove element
- if there is ever not match return false
- else return true