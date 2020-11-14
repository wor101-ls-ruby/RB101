def percentage(chars, size)
  if (chars * 100) % size == 0
    ((chars.to_f / size) * 100).to_i
  else
    ((chars.to_f / size) * 100).round(2)
  end
end


def letter_percentages(string)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }
  size = string.size
  lowercase = size - string.gsub(/[[:lower:]]/, '').size
  uppercase = size - string.gsub(/[[:upper:]]/, '').size
  neither = size - lowercase - uppercase
  hash[:lowercase] = percentage(lowercase, size)
  hash[:uppercase] = percentage(uppercase, size)
  hash[:neither] = percentage(neither, size)
  p hash
end







# **Algorthim**
# 1. create hash with keys lowercase:, uppercase:, and neither:
# 2. Count number of lowercase characters and divide by string length for percentage 
# 3. set value of lowercase: to percentage
# 4. Repeat steps 2-3 for uppercase and neither
# 5. Return hash




p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }