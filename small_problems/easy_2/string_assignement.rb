# string_assignment.rb

# take a look at the following code

name = 'Bob'
save_name = name    # save_name is now pointing to te same memory location as name and both equal 'Bob'
name = 'Alice'      # the assignment operator '=' reassigns the variable name to point to a new memory location where 'Alice' is saved.  Save-name remains pointing to the original location and equals 'Bob'
puts name, save_name  #puts Alice and Bob

# What does this code print out? Think about it for a moment before continuing.

name = 'Bob'
save_name = name
name.upcase!        # this time the .upcase! method mutates the caller and changes what is stored in the original memory lcation  that name points to.  This causes save_name to change as well
puts name, save_name # outputs 'BOB' and 'BOB'