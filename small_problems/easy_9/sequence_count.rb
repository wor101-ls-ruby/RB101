# def sequence(count, sequence)
#   array = []
#   count.times do |i|
#     array << sequence * (i + 1)
#   end
#   p array
# end

def sequence(count, sequence)
  (1..count).map { |i| i * sequence } 
end




p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []