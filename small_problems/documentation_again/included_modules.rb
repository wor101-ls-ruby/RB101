# included_modules.rb

## Ruby version 2.4.0 introduced an Array#min method not available in prior versions of Ruby; 
 # we wrote this exercise before that release. To follow along, please use the documentation for Ruby 2.3.0 here.

# use irb to fun the following code

a = [5, 9, 3, 11]
puts a.min


# Find the documentation for the #min method and change the above code to print the two smallest values in the Array.

# have to go to Enumberable module to find min method in Ruby 2.3.0

# min(n) → array
puts a.min(2)   # should return an array of the 2 lowest elements

## Notes
 # some languages feature MULTIPLE INHERITCANCE where a class can inherit from more than one immediate superclass
 # this has pitfalls and Ruby does not allow it
 # Instead, Ruby uses MIX-IN MODULES that allow classes of different types to share behaviors without inheritance
 # a class can use a MIX-IN MODULE by using the include method