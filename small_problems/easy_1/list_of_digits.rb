# list_of_digits.rb

# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# method accepts integer as argument
# converts argument into string
# splits string into an array
# converts each element into an integer
# returns new array

def list_digits(int)
  list = int.to_s.split(//).map { |x| x.to_i}  # (&:to_i) is shorthand for { |x| x.to_i }
  p list
  p list[0].integer?
end

list_digits(5427)
  