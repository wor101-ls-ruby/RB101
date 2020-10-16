
def sum_even_number_row(row_number)
  rows = []
  start_integer = 2
  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2
  end
  rows.last.sum
end

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer
  loop do
    row << current_integer
    current_integer += 2
    break if row.length == row_length
  end
  row
end

# Row number: 1 --> sum of integers in row: 2 
# Row number: 2 --> sum of integers in row: 10 
# Row number: 3 --> sum of integers in row: 68 

p sum_even_number_row(1) == 2 # true
p sum_even_number_row(2) == 10 # true
p sum_even_number_row(4) == 68 # true

# 1. Create an empty 'rows' array to contain all of the rows 
# 2. Create a 'row' array and add it to the overall 'rows' array 
# 3. Repeat step 2 until all the necessary rows have been created 
#   - All rows have been created when the length of the 'rows' array is equal to the input integer 
# 5. Sum the final row 
# 6. Return the sum of the final row 

# [ 
#   [2], 
#   [4, 6], 
#   [8, 10, 12], 
#   [14, 16, 18, 20], 
#   ….... 
# ] 

# Calculating thstart integer:
# Rule: First integer of row == last integer of preceding row + 2
# Algorithm:
# -Get the Last row of the rows array
# -Get the last integer of that row
# -Add 2 to the integer

# Start: 2, length: 1 --> [2] 
# Start: 4, length: 2 --> [4, 6] 
# Start: 8, length: 3 --> [8, 10, 12] 

# p create_row(2, 1) == [2] # true
# p create_row(4, 2) == [4, 6]
# p create_row(8, 3) == [8,10,12]

# Algorithm: 
# 1. Create an empty 'row' array to contain the integers 
# 2. Add the starting integer 
# 3. Increment the starting integer by 2 to get the next integer in the sequence 
# 4. Repeat steps 2 & 3 until the array has reached the correct length 
# 5. Return the 'row' array 

# Start the Loop
# - Add the start integer to the row
# - Increment the start integer by 2
# - Break out of the Loop if Length of row equals row_length

