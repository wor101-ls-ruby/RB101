# multiplying_two_numbers.rb

# Create a method that takes two arguments, multiplies them together, and returns the result.

def multiply(int1, int2)
  int1 * int2       # if int1 is passed an array the multiplication will append the array to itself that many times see https://docs.ruby-lang.org/en/2.6.0/Array.html#method-i-2A
end


p multiply(5, 3) == 15

p multiply([1, 5, 10], 3)