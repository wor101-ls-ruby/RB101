**Problem**
A triangle is classified as follows:

- equilateral All 3 sides are of equal length
- isosceles 2 sides are of equal length, while the 3rd is different
- scalene All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, 
and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol 
:equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

Rules:
Explicit
  - Input: 3 Integers
  - Outpt: symbol
  - to be valid, all sides must be greater than 0 && sum of 2 shortest sides must be greater than length of the longest
  - to be equilateral, all sides must be equal
  - to be isosceles, 2 sides must be equal and 1 side different
  - to be scalene, 3 sides must all be different

**Examples / Test Cases**
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

**Algorithm**
1. Test to confirm if valid triangle
  - if any side is <= 0 return :invalid
  - add two smallest sides and confirm greater than 3rd side, else return :invalid
2. If all sides are equal return :equilateral
3. If only 2 sides equal return :isosceles
4. else return :scalene 