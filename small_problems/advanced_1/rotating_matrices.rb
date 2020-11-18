=begin
**Problem**
As we saw in the previous exercises, a matrix can be represented in ruby by an Array of Arrays. 
For example:
  1  5  8
  4  7  2
  3  9  6

can be described by the Array of Arrays:
  matrix = [
    [1, 5, 8],
    [4, 7, 2],
    [3, 9, 6]
  ]

A 90-degree rotation of a matrix produces a new matrix in which each side of the matrix is rotated clockwise by 90 degrees. 
For example, the 90-degree rotation of the matrix shown above is:
  3  4  1
  9  7  5
  6  2  8
  
A 90 degree rotation of a non-square matrix is similar. For example, the rotation of:

  3  4  1
  9  7  5

is:

  9  3
  7  4
  5  1

Write a method that takes an arbitrary matrix and rotates it 90 degrees clockwise as shown above.



Rules:
Explicit
  - Input: Array of arrays containing integers
  - Output: Array of arrays containing integers
  - combine each integer of the same index from every element into a new row
  - the integers from the elements with the largest index should be first in the new row
  - aka. columns become rows & rows start with the integer at the bottom of the column

**Examples / Test Cases**
matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

**Data Structures**
- original array
- new array

**Algorithm**
1. Initialize a new Array to be of length equal to the number of integers in one of its array elements
2. Iterate over the input array
3. for each array element iterate over the integer elements
4. for each integer, add it to the new Array using its current index position to determine the new Arrays index position
5. retrun the new array

=end

def rotate90(matrix, degrees = 90)
  new_matrix = Array.new(matrix[0].size, [])
 
  matrix.each do |array|
    array.each_with_index do |integer, index|
      new_matrix[index] = new_matrix[index] + [integer]
    end
  end
  
  new_matrix.map! { |array| array.reverse }

  if degrees - 90 >= 90
    new_matrix = rotate90(new_matrix, (degrees - 90))
  end
  p new_matrix
end




matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

new_matrix1_180 = rotate90(matrix1, 270)

