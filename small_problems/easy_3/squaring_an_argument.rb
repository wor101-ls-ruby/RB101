# squaring_an_argument.rb

## Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

def multiply(int1, int2)
  int1 * int2       # if int1 is passed an array the multiplication will append the array to itself that many times see https://docs.ruby-lang.org/en/2.6.0/Array.html#method-i-2A
end

def square(int, power = 2)

  return_value = 1
  
  (power).times { |i| return_value = multiply(return_value, int)}
  return_value

end


p square(5) == 25
p square(-8) == 64

p square(10, 3)