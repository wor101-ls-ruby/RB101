# mutation.rb

# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value } # .each does not mutate the caller and array1 stays unaltered. << DOES mutate the caller and adds the valus from array1 to array 2
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }  # .upcase!()  mutates the caller (the element string in this case) and so the elements of array1 starting with 'C' and 'S' are now upcased.
puts array2  # the elements of array2 still point to the same memory location as the elements of array1. Therefore array2 will have upcased 'CURLY' and 'SHEMP' CHICO strings as well