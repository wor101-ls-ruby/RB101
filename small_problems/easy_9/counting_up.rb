def sequence(int)
  return_array = []
  int.times { |i| return_array << (i + 1) }
  return_array
end

def sequence_lesson(number)
  (1..number).to_a
end






p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]