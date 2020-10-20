**Problem**
Write a method that will take a short line of text, and print it within a box.

Rules:
Explicit
  - Input: String
  - Output: print text to screen in a box
  - Input will always fit in the terminal window
Implicit
  - A blank string should create a box 4 chars wide and 5 chars tall
  - the first and last lines start with a '+' followed by '-' and end with a '+'
  - the middle lines all begin and end with '|'
  - The string will always be online 3
  - The string should have one char of whitespace before and after it
  - There is no return, the method simply prints text to the screen?


**Examples / Test Cases**
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+


print_in_box('')
+--+
|  |
|  |
|  |
+--+

**Data Structures**
- An integer to represent width of box
- An integer to represent height of box
- Strings called line1, line2, line3, line4, line5
 

**Algorithm**
- Create Integer called width 
- Create Strings called line1, line2, line3, line4, line5
- Set width to equal length of the string + 4
- set line1 and line5
- set line2 and line4
- set line3
- puts line1 through line5
- 

**Problem**
Create a string starting and ending with "+" with '-' in the middle. Its total width should equal an integer passed to the method.

**Examples / Test Cases**

line1and5(5) = '+----+'
line1and5(10) = '+--------+'
line1and5(0) = '+---+'

**Data Structures**
- input integer
- output string

**algorithm**
- Create output_string and set it equal to '+'
- append '-' two times less than the input integer
- always append '-' at least twice
- append '+'
- return output string
