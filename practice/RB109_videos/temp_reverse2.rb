
def reverse_array(array)
  return_array = []
  
  array.each { |element| return_array.unshift(element) }
  return_array
end


def reverse_array!(array)
  
  count = -1
  (0...(array.size / 2)).each do |index|
    array[index], array[count] = array[count], array[index]
    count -=1
  end
  array
end

def sort(array)
  sort = nil
  
  until sort == false
    sort = false
    array.each_with_index do |element, index|
      if array[index + 1] != nil && element > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        sort = true
      end
    end
  end
  array
end





array1 = (1..11).to_a

array2 = %w(ape bear cat dog eagle falcon giraffe hippo)

array3 = [12, 5, 82, 43, 77, 2,46, 11, 8]


# p reverse_array!(array1)

# p reverse_array!(array2)

p sort(array3)

p array2.sort { |a, b| a.size <=> b.size }

p array2.sort_by { |animal| animal[-1] } 