def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  
  case 
  when angles.sum != 180, angles.include?(0)  # i did not know you could include multiple case statements on one line like this. works like || ?
    :invalid  
  when angles.include?(90)
    :right
  when angles.max > 90
    :obtuse
  else
    :acute
  end
  
end


# **Algorith**
# 1. check to confirm if a valid triangle. if not, return :invalid 
# 2. check to see if right triangle, if so return :right (use include)
# 3. check to see if obtuse, if so return :obtuse (use max)
# 4. return acute


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
