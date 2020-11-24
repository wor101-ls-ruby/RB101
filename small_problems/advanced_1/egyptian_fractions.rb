=begin
**Problem**
A Rational Number is any number that can be represented as the result of the division between two integers, e.g., 1/3, 3/2, 22/7, etc. 
The number to the left is called the numerator, and the number to the right is called the denominator.

A Unit Fraction is a rational number where the numerator is 1.

An Egyptian Fraction is the sum of a series of distinct unit fractions (no two are the same), such as:
  1   1    1    1
  - + - + -- + --
  2   3   13   15
  
Every positive rational number can be written as an Egyptian fraction. For example:
      1   1   1   1
  2 = - + - + - + -
      1   2   3   6

Write two methods: one that takes a Rational number as an argument, and returns an Array of the denominators that are part of an Egyptian Fraction representation of the number, 
and another that takes an Array of numbers in the same format, and calculates the resulting Rational number. 
You will need to use the Rational class provided by Ruby.



Rules:
Explicit
  - Input: a Rational(numerator, denominator)
  - Output: Array consisting of denominators of Egyptian Fraction
  - Unit Fractions always have a numerator of 1
  - Egyptian Fractions are the sum of a series of unique unit fractions that equal a ration
  - Egyptians fractions star with denominator of 1 and go up from there
  - every positive rational can be written as an Egyptian Fraction
  - one method must take rational argument and return denominators of Egyptian Fraction
  - second method must take array of denominators of Egyptian Fraction and return the Rational Number
  - Must use the Rational class provided by Ruby
  

**Examples / Test Cases**
egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

**Data Structures**
- Rational number
- Array


**Algorithm**
1. Initialize are return Array
2. create a counter variable
3. start a loop 
4. on each iteration check to see if 1 / counter plus the current return Array equals the Rational number
5. if it does add the counter to the array and break
6. if it does not and is less than the Rational number add the counter to the array
7. increase the counter by 1 and loop again
8. If it is greater than the rational number increase the counter by 1 and loop again


**Algorithm**
1. iterate through the array
2. turn each element into a rational number where 1 is the numerator and the denominator is the element
3. sum the array and return it as a rational number

=end
require 'pry'

def egyptian(rational)
  denominators = []
  current_denominator = 1
  
  loop do
    current_denominator_total = denominators.map { |den| Rational(1, den) }.sum
    if rational == (Rational(1, current_denominator)) + current_denominator_total
      denominators << current_denominator
      break
    elsif rational > (Rational(1, current_denominator)) + current_denominator_total
      denominators << current_denominator
      current_denominator += 1
    else
      current_denominator += 1
    end
  end
  denominators
end

def unegyptian(denominators_array)
  denominators_array.map { |denominator| Rational(1, denominator) }.sum
end

# **Algorithm**
# 1. iterate through the array
# 2. turn each element into a rational number where 1 is the numerator and the denominator is the element
# 3. sum the array and return it as a rational number


p egyptian(Rational(1, 1))
p egyptian(Rational(2, 1))    == [1, 2, 3, 6]
p egyptian(Rational(137, 60)) ==  [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    ==  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]


p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
