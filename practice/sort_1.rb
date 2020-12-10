=begin
**Problem**
Sort without using the sort method

Rules:
Explicit
  - Input: 
  - Output: 

**Examples / Test Cases**



**Data Structures**


**Algorithm**
1. initialzie a boolean variable called sorted and set to false
1. create a loop that continues until sorted equals true
3. set sorted to true at the beginning of the loop
2. iterate over the input array using #each_with_index method
  - for each element see if the next element is less than it
  - if so swap the two elements and set sorted variale to false
  - else go to the next element
3. once loop has been exited due to sorted equaling true return the array
=end



def generate_random_array(integer)
  return_array = []
  
  integer.times do
    return_array << (1..100).to_a.sample
  end
  return_array
  
end

def sort_array!(input_array)
  sorted = false
  
  until sorted == true
    sorted = true
    
    input_array.each_with_index do |element, index|
      if input_array[index + 1] != nil && element > input_array[index + 1] 
        input_array[index], input_array[index + 1] = input_array[index + 1], input_array[index]
        sorted = false
      else
        next
      end
    end
  end

  input_array

end




random_integers = generate_random_array(11)

integers_11 = [31, 53, 57, 3, 66, 45, 51, 54, 4, 48, 76]

integers = (1..10).to_a

animals = %w(ape bobcat cat dog elephant falcon giraffe hipp iguana).reverse

p animals
p sort_array!(integers_11)
p sort_array!(animals)