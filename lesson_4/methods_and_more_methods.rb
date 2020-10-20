# Problem 1
# What is the return value of #select method below? why?

# returns [1,2,3]. Select checks for truthiness of block and 'hi' will always return as truthy

[1, 2, 3].select do |num|
  num > 5

end
