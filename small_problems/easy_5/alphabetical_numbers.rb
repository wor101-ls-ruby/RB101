ENGLISH_NUMBERS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three',      # could have just created an array and use the index positions to represent the int key...duhhh
                    4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven',
                    8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven',
                    12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
                    15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen',
                    18 => 'eighteen', 19 => 'nineteen'}

def alphabetic_number_sort(input_array)
  nested_array = []
  sorted_array = []
  
  input_array.each { |int| nested_array << [ENGLISH_NUMBERS[int], int] }
  
  nested_array.sort!.each { |element| sorted_array << element[1] }
  
  p sorted_array
end 



NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort_lesson(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }   # Enumerable#sort_by iterates over the collection and takes a block to determine how to sort
end



p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

p alphabetic_number_sort_lesson((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]