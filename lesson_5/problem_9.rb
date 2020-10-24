# Given this data structure, return a new array of the same structure but with the sub arrays being ordered 
# (alphabetically or numerically as appropriate) in descending order.


arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

p arr.map { |element| element.sort.reverse }

p arr.map { |element| element.sort { |a, b| b <=> a } }

# instead of reverse could call #sort { |a, b| b <=> a }