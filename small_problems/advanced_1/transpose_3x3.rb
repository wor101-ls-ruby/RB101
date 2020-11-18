=begin
**Problem**
A 3 x 3 matrix can be represented by an Array of Arrays in which the main Array and all of the sub-Arrays has 3 elements. 
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

The transpose of a 3 x 3 matrix is the matrix that results from exchanging the columns and rows of the original matrix. 
For example, the transposition of the array shown above is:

  1  4  3
  5  7  9
  8  2  6
  
Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix. 
Note that there is a Array#transpose method that does this -- you may not use it for this exercise. 
You also are not allowed to use the Matrix class from the standard library. Your task is to do this yourself.

Take care not to modify the original matrix: you must produce a new matrix and leave the original matrix unchanged.

Rules:
Explicit
  - Input: A nested array
  - Output: A nested array
  - input and output array should have 3 elements each element being an array
  - each array element itself has 3 elements each consisting of an integer
  - do not modify the original array
  - new arrays should have elements consisting of the integers at the same index in the orignal array

**Examples / Test Cases**
  matrix = [
    [1, 5, 8],
    [4, 7, 2],
    [3, 9, 6]
  ]
  
  new_matrix = transpose(matrix)
  
  p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
  p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]


**Data Structures**
- input array
- output array


**Algorithm**
1. Initialize a new array of arrays 
2. Iterate over the input array
  - for each element (itself an array of integers) iterate over the integers wiht index
  - push each integer to the return array using its current index in the sub array to determine the main element it should be pushed to
3. return the return array
=end
require 'pry'

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]


def transpose(matrix)
  new_matrix = Array.new(matrix.size, [])
  matrix.each do |array|
    array.each_with_index { |element, index| new_matrix[index] = new_matrix[index] + [element] }
  end
  p new_matrix
end
  
def transpose!(matrix)
  
  matrix.size.times do
      matrix << []
  end
  
  (matrix.size / 2).times do |i|

    matrix[i].each_with_index do |element, index|
      # binding.pry
      matrix[(matrix.size / 2) + index] = matrix[(matrix.size / 2) + index] + [element]
    end

  end

  (matrix.size / 2).times do 
    matrix.shift
  end
  p matrix

end
  
new_matrix = transpose!(matrix) 
  
p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
