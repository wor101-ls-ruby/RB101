SPELLING_BLOCKS = [['B', 'O', true], ['X', 'K', true], ['D', 'Q', true], ['C', 'P', true], ['N', 'A', true], 
                   ['G', 'T', true], ['R', 'E', true], ['F', 'S', true], ['J', 'W', true], ['H', 'U', true],
                   ['V', 'I', true], ['L', 'Y', true], ['Z','M', true]]



# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M



def block_word?(string)
  letters = string.chars
  can_spell = true
  letters.each do |char|
    SPELLING_BLOCKS.each do |block|
      if block.include?(char) && block[2] == true
        block[2] = false
        next
      elsif block.include?(char) && block[2] == false
        can_spell = false
        break
      end
    end
  end
  can_spell
end 

# **Algorithm**
# 1. Create block variable to store
# 2. Iterate over each charcter from the input string
#   - check each block to see if it contains the character
#   - if it does, check the thir element of the array to see if it is true or false
#   - if true,change the third element of the block array to false and go to next character
#   - if false, word cannot be completed and return false
# 3. return true unless false was returned in step 2



p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true


BLOCKS = %W(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)



def block_word_lesson?(string)
  word = string.upcase
  BLOCKS.none? { |block| word.count(block) >= 2 }
end

p block_word_lesson?('BATCH') #== true
p block_word_lesson?('BUTCH') #== false
p block_word_lesson?('jest') #== true