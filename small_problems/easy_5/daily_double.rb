# def crunch(input_string)
#   chars_array = []
  
#   input_string.each_char do |char| 
#     chars_array << char unless chars_array.last == char
#   end
#   chars_array.join
# end





def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == crunch_text[-1]
    index += 1
  end
  crunch_text
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('')# == ''


