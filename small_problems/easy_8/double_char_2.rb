def double_consonants(input_string)
  output_string = ''
  input_string.chars.each do |char|
    if char.match?(/[a-zA-Z&&[^aeiouAEIOU]]/)
      output_string << (char * 2)
    else
      output_string << char
    end

    
  end
  output_string
end


# (/[bcdfghjklmnpqrstuvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)


# **Algorithm**
# 1. Iterate over each char of the input string
# 2. If the char is a consonant push it to the output string twice
# 3. If the char is a anything else push it to the output string once
#   - may be easiest to use Regexp to check for vowels, digits, punctuation, whitespace over constants
# 4. retunr the output string



p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""