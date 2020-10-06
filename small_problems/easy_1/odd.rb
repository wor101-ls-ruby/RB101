# odd.rb

## Write a method that takes one integer argument, which may be positive, negative, or zero. 
 # This method returns true if the number's absolute value is odd. You may assume that the argument is 
 # a valid integer value.

def is_odd (int)
  (int == 0 || (int % 2) == 0) ? false : true
end

def lesson_odd(int)
  int % 2 == 1      # lesson answers it knowing that an odd integer divided by 2 will always have a remainder of 1
end


p is_odd(5)
p is_odd(4)
p is_odd(0)
p is_odd(-7)