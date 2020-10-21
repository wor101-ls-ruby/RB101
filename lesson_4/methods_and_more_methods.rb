# Problem 1
# What is the return value of #select method below? why?

# returns [1,2,3]. Select checks for truthiness of block and 'hi' will always return as truthy

# [1, 2, 3].select do |num|
#   num > 5
#   'hi'
# end


# problem 2
# How does count treat the block's return value? How can we find out?
# Should return int 2. #count returns the number of elemeents in an array. If a block is passed it returns an integer representing number of elemets for which the block evaluates as true

# ['ant', 'bat', 'caterpillar'].count do |str|
#   str.length < 4
# end


# problem 3
# What is the return value of reject in the following code? Why?
# should return the full array. #reject returns an array of itemst that the block finds are NOT truthy. #puts returns a nil value which is not truthy

# [1, 2, 3].reject do |num|
#   puts num
# end

# problem 4
# What is the return value of each_with_object in the following code? Why?
# should return a Hash { 'a' => 'ant', 'b' => 'bear', 'c' => 'cat' }

# ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
#   hash[value[0]] = value
# end


# problem 5
# What does shift do in the following code? How can we find out?
# removes first key-value pair of a hash and returns it as an array. The hash is mutated and no longer has that key value pair

# hash = { a: 'ant', b: 'bear' }
# hash.shift



# problem 6
# What is the return value of the following statement? Why?
# should return 11. #pop destructively removes the last element of an array and returns THAT element. In this case it is 'caterpillar' which the .size method is called on

# ['ant', 'bear', 'caterpillar'].pop.size


# problem 7
# What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?
# Im guessing returns true as 3 is odd as any? problem returns a boolean of true if any element returns true after going to the block. it should output 1 and stops because true has been returned

# [0, 2, 3].any? do |num|
#   puts num
#   num.odd?
# end


# problem 8
# How does take work? Is it destructive? How can we find out?
# it returns the first 'n' number of elements. In this case [1,2] and returns it as a new array. Is not destructive

# arr = [1, 2, 3, 4, 5]
# arr.take(2)


# problem 9
# What is the return value of map in the following code? Why?
# map is an enumerable method that returns an array using the results of the block for each element. in this case only returning ['bear']. Nope returns [nil, 'bear']

# { a: 'ant', b: 'bear' }.map do |key, value|
#   if value.size > 3
#     value
#   end
# end

# problem 10
# What is the return value of the following code? Why?
# returns [1, nil, nil]. #map returns a new array using the result of the block for each element. puts returns nil on 2, 3

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
