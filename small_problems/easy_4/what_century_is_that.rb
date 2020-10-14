# what_century_is_that.rb

## Write a method that takes a year as input and returns the century. The return value should be a string that begins with the 
 # century number, and ends with st, nd, rd, or th as appropriate for that number.
 
 # New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

def century(year)
  
  
  if year % 100 != 0
    century_number = (year/100).round(2) + 1
  else
    century_number = (year/100).round(2)
  end
  

  
  if century_number.to_s.chars[-2] == '1'
    return century_number.to_s + 'th'
  else 
    last_digit_of_century = century_number.to_s.chars.pop
    
    case last_digit_of_century
    when '1'
      return century_number.to_s + 'st'
    when '2'
      return century_number.to_s + 'nd'
    when '3'
      return century_number.to_s + 'rd'
    else
      return century_number.to_s + 'th'
    end
  end

end





p century(2000)  == '20th'
p century(2001)   == '21st'
p century(1965)  == '20th'
p century(256)  == '3rd'
p century(5) == '1st'
p century(10103)  == '102nd'
p century(1052)  == '11th'
p century(1127)  == '12th'
p century(11201)  == '113th'
p century(42211)  
