# odd_list.rb

## Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. 
 # The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.


def oddities(array)
  odd_array = [] 
  array.each { |i| odd_array.push(i) if array.index(i).even? }
  odd_array
end

def non_oddities(array)
  odd_array = [] 
  array.each { |i| odd_array.push(i) if array.index(i).odd? }
  odd_array
end

def non_oddities2(array)
  count = 0
  new_array = []
  while count < array.size
    new_array << array[count] if count.odd?
    count += 1
  end
  new_array
end

p oddities([2, 3, 4, 5, 6]) 
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123]) 
p oddities([]) 

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

puts ''
puts 'non_oddities'
p non_oddities([2, 3, 4, 5, 6]) == [3, 5]
p non_oddities([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p non_oddities(['abc', 'def']) == ['def']
p non_oddities([123]) == []
p non_oddities([]) == []

puts ''
puts 'non_oddities2'
p non_oddities2([2, 3, 4, 5, 6]) 
p non_oddities2([1, 2, 3, 4, 5, 6]) 
p non_oddities2(['abc', 'def']) 
p non_oddities2([123]) 
p non_oddities2([]) 


p non_oddities2([2, 3, 4, 5, 6]) == [3, 5]
p non_oddities2([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p non_oddities2(['abc', 'def']) == ['def']
p non_oddities2([123]) == []
p non_oddities2([]) == []