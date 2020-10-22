def interleave(array1, array2)
  combined_array = []
  counter = 0
  
  array1.each_with_index do |element, index|
    combined_array[counter + index] = element
    counter += 1
  end
  
  counter = 1
  array2.each_with_index do |element, index|
    combined_array[counter + index] = element
    counter +=1
  end 
  p combined_array
  
end

def simpler_interleave(array1, array2)
  combined_array = []
  array1.each_with_index do |element, index|
    combined_array << element << array2[index]
  end
  p combined_array
end

def zip_interleave(array1, array2)
  
p array1.zip(array2).flatten
  
end



# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# p simpler_interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

p zip_interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
