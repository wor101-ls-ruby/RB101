# multiples_of_3_and_5.rb

## Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, 
 # if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

def multiple?(number, divisor)
  number % divisor == 0
end


def multisum(int)
  array = Array.new
  sum = 0
  int.times { |x| array.push (x+1) if multiple?(x+1, 3) || multiple?(x+1, 5)}     #@ lesoon usses .upto() method
#  array.each { |x| sum += x }
  sum = array.inject { |sum, n| sum + n }       # easiest way is to use the .inject() method from the Enumerable class
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168