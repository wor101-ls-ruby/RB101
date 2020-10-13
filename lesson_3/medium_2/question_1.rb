# question_1.rb

## Every named entity in Ruby has an object_id. This is a unique identifier for that object.

 # It is often the case that two different things "look the same", but they can be different objects. The "under the hood" object referred to by a particular 
 # named-variable can change depending on what is done to that named-variable.

 # In other words, in Ruby, all values are objects...but they are not always the same object.

 # Predict how the values and object ids will change throughout the flow of the code below:
 
 
 def fun_with_ids
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  a_outer_id = a_outer.object_id   # id 1 - 85
  b_outer_id = b_outer.object_id   # id 2 - 13272760
  c_outer_id = c_outer.object_id   # id 3 (element id 1) - 13272740
  d_outer_id = d_outer.object_id   # id 1 - 85

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block." 
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."
  puts

  1.times do
    a_outer_inner_id = a_outer.object_id     # id 1 - 85 
    b_outer_inner_id = b_outer.object_id    # id 2 - 13272760
    c_outer_inner_id = c_outer.object_id    # id 3 (element id 1) - 13272740
    d_outer_inner_id = d_outer.object_id    # id 1 - 85

    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block."
    puts

    a_outer = 22                # id 4 NEW because integers are immutable and assignment will have to point to new memory location - 45
    b_outer = "thirty three"    # id 5 NEW because assignment copies object to new memory location - 13272000
    c_outer = [44]              # id 3 (id 6 element points to new object ID)not new becuase this is not assignment but mutating the original array - 13271980
    d_outer = c_outer[0]        # id 6 NEW because it is pointing to the new object element ID created in c_outer -89

    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after."
    puts


    a_inner = a_outer           # id 4 becuase numbers are immutable and this points to the same object location - 45
    b_inner = b_outer           # id 5 the equal operator just points to existing copy  - 13272000
    c_inner = c_outer           # id 3  assignment points it to the current cpy  - 13271980
    d_inner = c_inner[0]        # id 6 because the element is still an integer and is immutable - 89

    a_inner_id = a_inner.object_id
    b_inner_id = b_inner.object_id
    c_inner_id = c_inner.object_id
    d_inner_id = d_inner.object_id

    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."
    puts
  end

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block." # 22 -4 - 45
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block." # 'thirty-three' - 5 - 13272000
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block." # [44] - 3 -13271980
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block." # 44 - 6 - 89
  puts

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
end

fun_with_ids
