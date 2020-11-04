SPELLING_BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], 
                   ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W',], ['H', 'U'],
                   ['V', 'I'], ['L', 'Y'], ['Z','M']]



# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M



def block_word?(string)
  chars = string.chars
  current_blocks = SPELLING_BLOCKS.map { |block| block}
  works = true
  chars.each do |char|
    block = false
    current_blocks.each_with_index do |block, index|
      if block.include?(char)
        current_blocks.delete_at(index)
        block = true
        break        
      end
    end
    block == true? works = true : works = false
  end
  works
end 


# **Algorithm**
# - iterate over every charcter in the input string
# - for each character check if there is a match in the spelling bock array
# - if a match then remove element
# - if there is ever not match return false
# - else return true


p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true
