## Sum Even Number Rows 

Imagine a sequence of consecutive even intergers, beginning with 2. The integers are grouped in rows, with the 
first row containing one integer, the second row two integers, the third row three integers, and so on. Given an 
integer representing the number of a particular row, return an integer representing the sum of all the integers \
in that row. 

**Examples** 
Row number: 1 --> sum of integers in row: 2 
Row number: 2 --> sum of integers in row: 10 
Row number: 3 --> sum of integers in row: 68 

Confirm test cases 
2 --> 2 
4, 6 --> 10 
14, 16, 18, 20 --> 68 

**Data Structures** 
-Overall structure represents a sequence as a whole 
-Individual rows within overall structure 
-Individual rows in a set order in context of sequence 
-Individual rows contain integers 
-Can assume that integers are in a set order in the context of the sequence 

[ 
  [2], 
  [4, 6], 
  [8, 10, 12], 
  [14, 16, 18, 20], 
  ….... 
] 

**Algorithm** 
Notes: Can create substeps, but if too many, extract to its own problem 

 
1. Create an empty 'rows' array to contain all of the rows 
2. Create a 'row' array and add it to the overall 'rows' array 
3. Repeat step 2 until all the necessary rows have been created 
   - All rows have been created when the length of the 'rows' array is equal to the input integer 
5. Sum the final row 
6. Return the sum of the final row 

 

*Problem: Create a Row* 

Rules: 
  -Row is an array 
  -Array contains integers 
  -Integers are consecutive even numbers 
  -Integers in each row form part of a larger overall sequence 
  -Rows are of different lengths 
  -Input: the information needed to create the output 
      -The start integer 
      -Length of the row 
  -Output: the row itself (ie. [8,10, 12] )

Examples: 
Start: 2, length: 1 --> [2] 
Start: 4, length: 2 --> [4, 6] 
Start: 8, length: 3 --> [8, 10, 12] 

Data Structures: 
  -An array of integers 

Algorithm: 
1. Create an empty 'row' array to contain the integers 
2. Add the starting integer 
3. Increment the starting integer by 2 to get the next integer in the sequence 
4. Repeat steps 2 & 3 until the array has reached the correct length 
5. Return the 'row' array 


## Final Thoughts ##
- Not a completely linear process
- Move back and forward between the steps
- Switch from implementation mode to abstract problem solving mode when necessary
- Don't try to problem solve at the code level