# question_4.rb

# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

p numbers.delete_at(1) # prints 2 because it deletes the value frome element 1 and returns it
p numbers # prints [1 ,3, 4, 5]

numbers = [1, 2, 3, 4, 5]
p numbers.delete(1) # prints 1 because it deletes every element with a value of 1 and returns that value
p numbers # prints [2, 3, 4, 5]