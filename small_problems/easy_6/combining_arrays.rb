def merge(array1, array2)
  p (array1 + array2).uniq
end

def merge_lesson(array1, array2)
  p array1 | array2
end




p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

p merge_lesson([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]