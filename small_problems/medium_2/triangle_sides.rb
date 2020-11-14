def triangle(side1, side2, side3)
  triangle = [side1, side2, side3]
  if side1 <= 0 || side2 <= 0 || side3 <= 0
    :invalid
  elsif triangle.min(2).sum <= triangle.max
    :invalid
  elsif side1 == side2 && side1 == side3
    :equilateral
  elsif triangle.uniq.size == 2
    :isosceles
  else
    :scalene
  end
end



# **Algorithm**
# 1. Test to confirm if valid triangle
#   - if any side is <= 0 return :invalid
#   - add two smallest sides and confirm greater than 3rd side, else return :invalid
# 2. If all sides are equal return :equilateral
# 3. If only 2 sides equal return :isosceles
# 4. else return :scalene 




p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid