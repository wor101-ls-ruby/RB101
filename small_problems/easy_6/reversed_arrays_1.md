**Problem**
Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. 
The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.

Rules:
Explicit
  - Input: array
  - Output: the same array object mutated
  - must reverse the elements in the array
  - the return array must be the same object as the input array
  - may not use Array#reverse or Array#reverse!
Implicit:
  - we are reversing the order of elements NOT the elements themselvs


**Examples / Test Cases**
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []
