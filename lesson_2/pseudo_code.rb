# pseudo_code.rb

def find_greatest(numbers)
  saved_number = nil

  numbers.each do |num|
    saved_number ||= num  # assign to first value <-- checking on each iteration. can probably set before loop
    if saved_number >= num  # need to add clause if numbers = nil
      next
    else
      saved_number = num
    end
  end

  saved_number
end



# method that returns the sum of two integers

def sum_of_two_integers(integer1, integer2)
  if integer1.class != Integer || integer2.class != Integer
    puts "You must provide integers"
  else
    result = integer1 + integer2
  end 
end 

# a method that takes an array of strings, and returns a string that is all those strings concatenated together

def concatenated_array(array)
  result = ""
  array.each { |string| result = result + string }
  return result
end


# a method that takes an array of integers, and returns a new array with every other element

def every_other_element(array)
  return_array = []
  array.each_index do |index|
    if index == 0 || index % 2 == 0
      return_array.push(array[index])
    else
      next
    end 
  end
  return return_array
end 

array = [0, 13, 5, 3, 8]

p every_other_element(array)