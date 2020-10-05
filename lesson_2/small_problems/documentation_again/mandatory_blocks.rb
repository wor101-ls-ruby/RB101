# mandatory_blocks.rb

## The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. 
 # Assume you have the following code:

a = [1, 4, 8, 11, 15, 19]

# How would you search this Array to find the first element whose value exceeds 8?

# bsearch {|x| block } → elem 
puts a.bsearch { |x| x > 8 }    # block is required and returns an element if true