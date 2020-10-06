# how_many.rb

## write a method that counts the number of occurrences of each element in a given array
 # The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, print each element alongside the number of occurrences
 
def count_occurrences(array)
  # create a hash using unique element as keys and occurences as value
  occurences = {}
  array.each { |element| occurences.has_key?(element) ? (occurences[element] = (occurences[element] += 1)) : occurences[element] = 1 }
    # check each element against the current keys in the hash
    # if key already exists go to next element and add 1 to value for key
    # if key doesn't exist add element as a new key and set value to 1
  occurences.each { |key, value| puts "#{key} => #{value}" }
end


# the lesson method uses the .uniq method to return a new array with all duplicate elements removed
def lesson_count_occurences(array)
  occurences = {}
  
  array.uniq.each do |element|
    occurences[element] = array.count(element)    # uses the .count method on the original array to determine number of occurrences
  end
  
  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end
  
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# lesson_count_occurences(vehicles)