def bubble_sort!(array)
  loop do
    no_swaps = true
    array.each_with_index do |element , index|
      if index == array.index(array.last)
        break
      elsif element > array[index + 1]
        array[index], array[index+1] = array[index+1], array[index]
        no_swaps = false
      end
    end
    break if no_swaps == true
  end
  array
end

def bubble_sort_optomized!(array)
  loop do
    no_swaps = true
    start_index = 1
    
    start_index.upto(array.size - 1) do |index|

      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      start_index = index
      no_swaps = false
    end 
    
    break if no_swaps == true
  end
  p array
end



# **Algorithm**
# 1. create a variable called no_swaps and set it to true
# 2. start a loop
# 3. iterate over the input array
# 4. compare each element vs the next element
#   - if the first is greater than the second swap them 
#   - set no_swaps to false
# 6. break if no_swaps == true
# 7. return array

array = [5, 3]
bubble_sort_optomized!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort_optomized!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort_optomized!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)





array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)