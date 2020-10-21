

def reverse!(array)
  new_index = []
  array.length.times { |i| new_index << [(array.length - i - 1), array[i]] }
  # p new_index
  new_index.each { |i| array[i[0]] = i[1] }
  p array
end






list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []