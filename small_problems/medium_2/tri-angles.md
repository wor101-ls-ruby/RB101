**Problems**
A triangle is classified as follows:

- right = One angle of the triangle is a right angle (90 degrees)
- acute = All 3 angles of the triangle are less than 90 degrees
- obtuse = One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: 
if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol 
:right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. 
You may also assume that the arguments are specified in degrees.

Rules:
Explicit
  - Input: 3 integers
  - Output: symbol
  - to be valid, sum of angles must be 180 && all angles must be greater than 0
  - to be right, one angle must equal 90
  - to be acute, all 3 angles must be less than 90
  - to be obtuse, one angle must be greater than 90
  - all angles will be integers
  - assume arguments are given in degress

**Examples / Test Cases**
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

**Data Structures*
- input integers
- array of angles


**Algorith**
1. check to confirm if a valid triangle. if not, return :invalid 
2. check to see if right triangle, if so return :right (use include)
3. check to see if obtuese, if so return :obtuse (use max)
4. return acute