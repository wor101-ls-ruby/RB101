=begin
**Problem**
Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. 
The smallest such star you need to handle is a 7x7 grid.

Rules:
Explicit
  - Input: Integer
  - Output: star grid of '*'
  - input will always be an odd integer of >= 7
  -star consists of 4 lines
    - one line is horizontal 
    - one line is vertical
    - two lines are at angles
  - each line is n long and consists of "*"

**Examples / Test Cases**
star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *

star(9)

*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *


**Data Structures**
- array of strings strings

**Algorithm**
1. Initialize an array to hold strings for each line
2. Array should be of length equal to input integer divided by 2 plus 1 (lines repeat)
3. iterate over array with index
  - each line but the last consists of three "*" evenly spaced with index space on either side
  - for last index it should be a string of n number of "*"
4. Select all but the last element of the array, reverse the order of elements and append to original array
5. output each line of the array one by one

=end

def star(size)
  star_array = Array.new((size / 2) + 1)
  
  count = 0
  star_array.map! do |line|
    if count < (star_array.size - 1)
      inner_space = ((size - 3) - ( count * 2)) / 2
      line = ' ' * count +  '*' + ' ' * inner_space +  '*' + ' ' * inner_space + '*' + ' ' * count
      count += 1
      line
    else
      '*'*size
    end
  end
  puts star_array + star_array[0..-2].reverse
end

def star_alt(size)
  star_array = Array.new((size / 2) + 1, '*')

  count = 0
  star_array.map! do |line|
    if count < (star_array.size - 1)
      line = line.center(size)
      line[count] = '*'
      line[size - 1 - count] = '*'
      count += 1
      line
    else
      '*' * size
    end
  end
  puts star_array + star_array[0..-2].reverse
end

star_alt(7)

# star(7)

# *  *  *
# * * *
#   ***
# *******
#   ***
# * * *
# *  *  *

# star(9)

# *   *   *
# *  *  *
#   * * *
#   ***
# *********
#   ***
#   * * *
# *  *  *
# *   *   *

