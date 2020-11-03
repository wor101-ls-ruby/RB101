

def diamond(int)
  first_half = []
  
  int.times do |line|
    if line <= (int / 2)
      string = '*'*(line * 2) + '*'
      first_half << string.center(int)
    end
    break if line > (int / 2)
  end
  second_half = first_half.reverse
  second_half.shift 
  
  diamond_array =  first_half + second_half
  diamond_array.each { |line| puts line }
end


def diamond_outline_line
  
end

def diamond_outline(int)
  first_half = []
  second_half = []
  white_space = 0
  
  int.times do |line|
  string = ''
    if line == 0
      string = '*'
      white_space += 1
    elsif line <= (int / 2)
      string = '*' + ' '*white_space + '*'
      white_space += 2
    else
      break
    end
    first_half << string.center(int)
  end
  second_half = first_half.reverse
  second_half.shift
  diamond_array = first_half + second_half
  diamond_array.each { |line| puts line }

end



# **Algorithm**
# 1. Create a blank array 
# 2. Set array to have elements equal to the input integer
# 3. iterate over the array with index
# 4. until index > inpt / 2 
#     string equals index times 2 many '*' plus '*'
# 5. when index >= input / 2
#     create new array and reverse current one
#     append it to the array
# 6. print each element of array

diamond(3)

# *
# ***
# *
 
 
 diamond(9)

#     *
#   ***
#   *****
# *******
# *********
# *******
#   *****
#   ***
#     *


diamond_outline(5)

#   *
# * *
# *   *
# * *
#   *

diamond_outline(9)