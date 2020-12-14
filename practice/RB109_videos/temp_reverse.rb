def reverse_array(array)
  return_array = []
  
  array.each { |element| return_array.unshift(element) }
  return_array
end

def reverse_array!(array)
  
  count = -1
  (0...(array.size / 2)).each do |index|
    array[index], array[count] = array[count], array[index]
    count -= 1
  end
  p array
end


a = %w(ape bear cat dog elephant falcon)

b = (1..10).to_a



p reverse_array!(a)

p reverse_array!(b)