# default_arguments_in_the_middle.rb

# Consider the following method and a call to that method:
# Use the ruby documentation to determine what this code will print.

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# prints [4,5,3,6]

# can be found under syntax, calling methods @ https://docs.ruby-lang.org/en/2.7.0/doc/syntax/calling_methods_rdoc.html