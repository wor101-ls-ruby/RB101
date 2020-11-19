=begin
**Problem**
Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

Your solution should not mutate the input arrays.


Rules:
Explicit
  - Input: two sorted Arrays
  - Output: one sorted Array
  - return a new Array / do not mutate original arrays
  - must build result array one element at a time
  - cannot sort the result array
Implicit
  - arrays can be of different sizes
  - arrays can be empty
  - can different arrays have the same number?
**Examples / Test Cases**
merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]

**Data Structures**
- two input Arrays
- one output Array


**Algorithm**
1. creat Integer variable to represent current index of Array1
2. create Integer variable to represent current index of Array2
3. create return array 
4. until return arrays size equals the size of both of arrays combined
  - check if value at current_index1 of array1 is less than or equal  value at current_index2 of array2
  - if so add it to the return array and increase current_index1 by 1
  - else add value of array1 at current_index2 and increase current_index2 by 1
5. return final sortd array


=end

def merge(array1, array2)
  sorted_array = []
  current_index1 = 0
  current_index2 = 0
  
  until sorted_array.size == (array1.size + array2.size)
    if current_index1 == array1.size
      array2[current_index2..-1].each { |element| sorted_array << element }
    elsif current_index2 == array2.size
      array1[current_index1..-1].each { |element| sorted_array << element }
    elsif array1[current_index1] <= array2[current_index2]
      sorted_array << array1[current_index1]
      current_index1 += 1
    else
      sorted_array << array2[current_index2]
      current_index2 += 1
    end
  end
  p sorted_array

end


p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]