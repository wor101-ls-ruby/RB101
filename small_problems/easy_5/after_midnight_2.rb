MINUTES_PER_DAY = 1440

def before_midnight(time_string)            # instead of duplicating the total_minutes calculation, could have called on the after midnight metod
  hours = time_string.split(/:/)[0].to_i
  minutes = time_string.split(/:/)[1].to_i
  total_minutes = 0
  
  if hours == 24
    hours = 0
  end
  
  total_minutes = (hours * 60) + minutes
  if total_minutes == 0                 # lesson uses Modulo operator to check for this edge case (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
    return 0
  else
    MINUTES_PER_DAY - total_minutes
  end
  
  
end

def after_midnight(time_string)
  hours = time_string.split(/:/)[0].to_i      # can assign multiple variables at once    hours, minutes = time_str.split(':').map(&:to_i)
  minutes = time_string.split(/:/)[1].to_i
  total_minutes = 0
  
  hours = 0 if hours == 24
  
  total_minutes = (hours * 60) + minutes    # instaed of using 60 should create global variable called MINTUTES_PER_HOUR
  
end

# **Algorithm - After Midnight**
# 1. create hour variable 
# 2. Create minutes variable
# 3. Create total_minutes variable and set to 0
# 3. set variables using .split(/:/) on the input string
#   - if hour = 24 then set it to 0
# 4. Convert variables to integers
# 5. Multiply hour by 60 
# 6. Set total_minutes to hour plus minutes
# 7. return total_minutes




p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
p after_midnight('10:34') == 634
p before_midnight('10:34') == 806