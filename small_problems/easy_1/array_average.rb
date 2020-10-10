# array_average.rb

## Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. 
 # The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

def average(array)
  total = 0.0
  array.each { |int| total += int.to_f} # updated to return float
  total = total / array.length
end

def lesson_average(numbers)
  sum = numbers.reduce { |sum, number| sum + number } # could also be written as numbers.reduce(:+)
  sum / numbers.count
end


# the below should all print true
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

puts average([1, 6]) 
puts average([1, 5, 87, 45, 8, 8]) 
puts average([9, 47, 23, 95, 16, 52]) 