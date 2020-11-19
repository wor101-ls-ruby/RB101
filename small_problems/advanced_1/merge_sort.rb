=begin
**Problem**
Sort an array of passed in values using merge sort. 
You can assume that this array may contain only one type of data. 
And that data may be either all numbers or all strings.

Merge sort is a recursive sorting algorithm that works by breaking down the array elements into nested sub-arrays, 
then recombining those nested sub-arrays in sorted order. It is best shown by example. 

For instance, let's merge sort the array [9,5,7,1]. 
Breaking this down into nested sub-arrays, we get:
  [9, 5, 7, 1] ->
  [[9, 5], [7, 1]] ->
  [[[9], [5]], [[7], [1]]]
  
We then work our way back to a flat array by merging each pair of nested sub-arrays:
  [[[9], [5]], [[7], [1]]] ->
  [[5, 9], [1, 7]] ->
  [1, 5, 7, 9]


Rules:
Explicit
  - Input: an Array of all integers or all strings
  - Output: an Array of all integers or all strings
  - the method is a recursive method that must reduce all elements down to into progressively more nested arrays until only 1 element remains
  - it recombines the bottom elements and sorts them until the entire array is flat
Implicit
  - there can be an odd number of elements

**Examples / Test Cases**
merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
merge_sort([5, 3]) == [3, 5]
merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]


**Data Structures**
- input array
- output array


**Algorithm**
1. reduce input array into nested sub-arrays of only 1 element each
2. rejoin sub-arrays two elements at a time and sort the elements
3. return fully rejoined array

**Algorith - reduce to sub-arrays**
1. create method to partion array in half
2. as long as any of the bottom elements has more than one element repeat on those elements
3. return full nested array

**Algorithm - recombine sub-arrays**
1. create method to re-join & sort elements
2. check each elmeent of array
  - if array.class equals array then pass element to method as an argument
  - else (should mean it is a string or integer) flatten and sort
3. return re-joined array

=end

def create_nested_array(array)
  nested_array = []
  middle = (array.size / 2)
  
  nested_array = [ array[0...middle], array[middle..-1] ]
  nested_array.select! { |element| element != [] } 
  
  nested_array.map! do |subarray| 
    if subarray.size == 1
      subarray
    elsif subarray.size > 1
      create_nested_array(subarray) 
    end
  end
  nested_array
end

# **Algorithm - recombine sub-arrays**
# 1. create method to re-join & sort elements
# 2. check each elmeent of array
#   - if array.class equals array then pass element to method as an argument
#   - else (should mean it is a string or integer) flatten and sort
# 3. return re-joined array


def flatten_and_sort(array)
  flattened_array = []

  # if array.none? { |element| element.class == Array } 
  #   flattened_array = array
  # else 

    array.each do |element|
      if element[0][0].class == Array
        flatten_and_sort(element)
      elsif element.class == Array
        flattened_array << element.flatten.sort
      else 
        flattened_array << element
      end
    end

  # end
  flattened_array
end

def merge_sort(array)
  
  nested_array = create_nested_array(array)
  
  
  p flatten_and_sort(nested_array)
  
end



merge_sort([1])
 merge_sort([3,2,1])

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]