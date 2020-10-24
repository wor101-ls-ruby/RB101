HEXADECIMAL = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 'A', 'B', 'C', 'D', 'E', 'F']

def random_string(length)
  result = ''
  length.times do
    result << HEXADECIMAL.sample.to_s
  end
  result
end

def create_hex
  hex_array = [8, 4, 4, 4, 12]
  hexadecimal_string = ''
  hex_array.each { |int| hexadecimal_string << random_string(int) << "-" }
  # hexadecimal_string << random_string(8) << '-'
  # hexadecimal_string << random_string(4) << "-"
  # hexadecimal_string << random_string(4) << "-"
  # hexadecimal_string << random_string(4) << "-"
  # hexadecimal_string << random_string(12) << "-"
  hexadecimal_string.slice(0..-2)
end



p create_hex



# 5 sections like this 8-4-4-4-12