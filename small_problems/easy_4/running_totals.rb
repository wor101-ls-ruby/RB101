# running_totals.rb

## Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

def running_total(array)
  running_total_array = Array.new
  array.each do |n|
    if array.index(n) == 0
      running_total_array.push(n)
    else
      count = 0
      sum = 0
      while count <= array.index(n)
        sum += array[count]
        count += 1
      end
      running_total_array.push(sum)
    end

  end
    running_total_array
end

def running_total_lesson(array)       # OMG did i over engineer mine :-()
  sum = 0
  array.map { |value| sum += value }
end




p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []