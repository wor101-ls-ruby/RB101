def multiply_all_pairs(array1, array2)
  products_array = []
  
  array1.each do |int1|
    array2.each { |int2| products_array << int1 * int2 }
  end
  p products_array.sort
end

# could use Array#product to return an array of all combinations of elements frm both arrays and then iterate over taht array





# **Algorithm**
# - Create new Array variable called products_array
# - check the length of each array arguments
# - iterate over the first array
# - while iterating over the first array iterate over the second array
# - multiply the element from the first array by every element in the second array
# - push the result to the products_array
# - sort the products_array
# - return the products_array


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]