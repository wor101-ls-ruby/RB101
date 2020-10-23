def sum_of_sums(array)
  result_sum = 0

  array.each_with_index { |n, index| result_sum += array[0..index].sum }

  p result_sum
end




# **Algorithm**
# - Create new Integer variable called result_sum and set it to 0
# - Create a new Integer variable named counter and set it to 0
# - Iterate over the array
#   - create a new Array called temp_array
#   - temp_array is a copy of the argument array but ONLY with elements up to index of counter
#   - sump the temp array 
#   - result_sum += the sump of the temp_array
# - return the result_sum


p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35