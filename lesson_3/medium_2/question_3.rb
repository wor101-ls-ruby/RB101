# question_3.rb

## Let's call a method, and pass both a string and an array as arguments and see how even though they are treated in the same way by Ruby, the results can be different.

# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"      # this is non-mutating so the original object pointed to outside the method is not changed. The assignment operator creates a new object in memory
  an_array_param << "rutabaga"      # this IS mutating and changes thhe original object will now point to the new value
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"  # should display "pumpikin"
puts "My array looks like this now: #{my_array}"    # should deipplay pumpkins, rutabaga