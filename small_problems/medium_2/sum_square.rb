def sum_square_difference(int)
  array = (1..int).to_a
  square_of_sums = (array.sum)**2
  sum_of_squares = 0
  
  array.each { |i| sum_of_squares += i**2 }
  
  p square_of_sums - sum_of_squares
end

# **Algorithm**
# 1. create an array of integers starting at 1 and going up to the input integer
# 2. create square_of_sums variable
# 3. create sum_of_squares variable and set to 0
# 4. set square_of_sums equal to sum of the array squared
# 4. iterate over array
#   - square each element and add to sum_of_squares
# 5. subtract sum_of_squares from square_of_sums


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150