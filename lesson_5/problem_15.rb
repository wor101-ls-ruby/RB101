# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.


arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]


even_array = arr.select do |outer_element|
  all_integers_even = true
  outer_element.values.each do |value_array|
    value_array.each { |int| all_integers_even = false if int.odd? }
  end
  all_integers_even
end

even_array_all = arr.select do |outer_element|
  outer_element.values.all? do |value|
    value.all? { |int| int.even? } 
  end 
end 

p even_array

p even_array_all