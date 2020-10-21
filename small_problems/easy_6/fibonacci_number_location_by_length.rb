



def find_fibonacci_index_by_length(length)
  fibonnaci_numbers = [1, 1]
  while fibonnaci_numbers.last.to_s.length < length
    fibonnaci_numbers << (fibonnaci_numbers[-1] + fibonnaci_numbers[-2])
  end 
 
  p fibonnaci_numbers.length
  
end









# **Algorithm**
# - creat an array called fibonnaci_numbers with the first two elements equal to 1
# - while the length of the last element in the array is < the input integer 
#   - sum the last two elements of the array and push it to the array
# - return length of the array -1





p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
