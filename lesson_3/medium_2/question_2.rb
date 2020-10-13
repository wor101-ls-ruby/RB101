# question_2.rb

## Let's look at object id's again from the perspective of a method call instead of a block.

 # Here we haven't changed ANY of the code outside or inside of the block/method. We simply took the contents of the block from the previous practice problem and moved it to a method, 
 # to which we are passing all of our outer variables.

 # Predict how the values and object ids will change throughout the flow of the code below:

def fun_with_ids
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  a_outer_id = a_outer.object_id    # id 1
  b_outer_id = b_outer.object_id    # id 2
  c_outer_id = c_outer.object_id    # id 3 (element is id 1)
  d_outer_id = d_outer.object_id    # id 1

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block." # - 42 - id 1 - ID# 85
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block." # - "forty two" - id 2 - ID# 18679700
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block." # - [42] -id 3 - ID# 18679680
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block." # - 42 - id 1 - ID# 85
  puts

  an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)


  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call." # - 42 - id 1 - id 1 - ID#  85
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the method call." # - "forty two" - id 2 - id 2 - ID# 18679700
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the method call." # - [44] - id 3 - id 3 - ID#  - ID# 18679680
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the method call." # = 42 - id 1 - id 1 - ID# 85
  puts

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
  puts
end


def an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)

  puts "a_outer id was #{a_outer_id} before the method and is: #{a_outer.object_id} inside the method." # - 42 - id 1 - ID# 85
  puts "b_outer id was #{b_outer_id} before the method and is: #{b_outer.object_id} inside the method." # - "forty two" - id 2 - ID# 18679700
  puts "c_outer id was #{c_outer_id} before the method and is: #{c_outer.object_id} inside the method." # - [42] -id 3 - ID# 18679680
  puts "d_outer id was #{d_outer_id} before the method and is: #{d_outer.object_id} inside the method." # - 42 - id 1 - ID# 85
  puts

  a_outer = 22              # creates a new object as integers ara immutable
  b_outer = "thirty three"  # creates a new object as assignment does not mutate the caller but creates a copy if value is different than original value
  c_outer = [44]            # this creates a new object
  d_outer = c_outer[0]      # will point to same id as before

  puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after." # -22 - id 1 previously - id 4 NEW - ID# 45
  puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after." # -"thirty three" - id 2 prev - id 5 NEW - ID# 18678940
  puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after." # - [44] - id 3 prev - NEW ID# 18678920
  puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after." # - 44 - id 1 prev - id 6 NEW - ID# 89
  puts

  a_inner = a_outer         # points to same object - id 4
  b_inner = b_outer         # points to same object - id 5
  c_inner = c_outer         # points to same object - id 3
  d_inner = c_inner[0]      # points to same object - id 6

  a_inner_id = a_inner.object_id
  b_inner_id = b_inner.object_id
  c_inner_id = c_inner.object_id
  d_inner_id = d_inner.object_id

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the method (compared to #{a_outer.object_id} for outer)." # - 22 - id 4 - ID# 45
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the method (compared to #{b_outer.object_id} for outer)." # - "thirty three" - id 5 - ID# 18678940
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the method (compared to #{c_outer.object_id} for outer)." # - [44] - id 3 -  ID# 18678920
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the method (compared to #{d_outer.object_id} for outer)." # - 44 - id 6 - ID# 89
  puts
end

fun_with_ids