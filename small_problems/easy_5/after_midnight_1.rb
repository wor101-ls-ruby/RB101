# **Problem**
# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

def calculate_hours(minutes)
  total_hours = minutes / 60
  hh = 0

  if total_hours < 0
    hh = 24
    until total_hours == 0
      hh -= 1
      hh = 24 if hh == 0
      total_hours += 1
    end
    hh = 0 if hh == 24
  end

  if total_hours > 0
    until total_hours == 0
      hh += 1
      hh = 0 if hh == 24
      total_hours -= 1
    end
  end

  hh
end

def calculate_minutes(minutes)
  total_minutes = minutes
  mm = 0
  if total_minutes < 0
    mm = 60
    until total_minutes == 0
      mm -= 1
      mm = 59 if mm == -1
      total_minutes += 1
    end
  elsif total_minutes > 0
    until total_minutes == 0
      mm += 1
      mm = 0 if mm == 60
      total_minutes -= 1
    end
  end
  mm
end 

def format_time(time)
  if time.length < 2
    time = '0' + time
  end
  time
end

def time_of_day(minutes)
  hh = calculate_hours(minutes).to_s
  mm = calculate_minutes(minutes).to_s

  hh = format_time(hh)
  mm = format_time(mm)

  time = hh + ':' + mm
end




# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"


MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day_lesson(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day_lesson(0) == "00:00"
p time_of_day_lesson(-3) == "23:57"
p time_of_day_lesson(35) == "00:35"
p time_of_day_lesson(-1437) == "00:03"
p time_of_day_lesson(3000) == "02:00"
p time_of_day_lesson(800) == "13:20"
p time_of_day_lesson(-4231) == "01:29"


# Rules:
#   Explicit
#   -Input: Integer
#   -Output: a string in (hh:mm) format
#   -cannot use Date or Time classes
#   -if integer is negative the time is that many minutes before midnight
#   -if integer is positive the time is that may mintues after midnight

#   Implicit
#   -negative integers that are too small will roll the clock back a day
#   -postive integers that are too big will roll the clock forward

# **Examples / Test Cases**
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# **Data Structures**
# -input integer will be positive or negative
# -integer 'hh' will equal 0-23
# -integer 'mm' will equal 0-59
# -return string that concatenates 'hh' + ':' + 'mm'
#   -if 'hh' or 'mm' are ony 1 digit then a 0 will have to be prepended

# **Algorithm**
# 1. Create a integer variable called 'hh' and set it to 0 to represent midnight
# 2. Create a integer variable called 'mm' and set it to 0 to represent midnight
# 3. Create a string variable called 'time'
# 4. Calculate the number of hours and minutes the input integer converts to
# 5. Set 'hh' that many hours less if negative and more if positve from midnight (24) 
# 6. Set 'mm' that many minutes less if negative and more if positive from the hour (60) 
# 7. Combine 'hh' and 'mm' into hh:mm format and save to string 'time'
# 8. Return 'time'


# **Problem**
# Calculate the number of hours 

# Rules:
# -Explicit
#   -Input: positive or negative integer
#   -Output: integer between 0 and 23

# **Examples / Test Cases**
# calculate_hours(0) == 0
# calculate_hours(-3) == 23
# calculate_hours(35) == 0
# calculate_hours(-1437) == 0
# calculate_hours(3000) == 2
# calculate_hours(800) == 13
# calculate_hours(-4231) == 1


# **Data Structures**
# -positive or negative input integer
# -integer between 0 and 23

# **Algorithm**
# 1. Create 'total_hours' varaible that equals input / 60
# 2. Creat 'hh' and set it to 0
# 3. if 'total_hours' is negative then set 'hh' to 24
#   a. Until 'total_hours' equals 0 
#     -subtract 1 from 'hh'
#     -if 'hh' reaches -1 then set it to 24
#     -add 1 to 'total_hours'
# 4. if 'total_hours' is positive then set 'hh' to 0
#   a. Until 'total_hours' equals 0
#     -add 1 to 'hh'
#     -if 'hh' reaches 24 then set it to 0
#     -subtract 1 from 'total_hours'



# p calculate_hours(0) #== 0
# p calculate_hours(-3) #== 23
# p calculate_hours(35) #== 0
# p calculate_hours(-1437) #== 0
# p calculate_hours(3000) #== 2
# p calculate_hours(800) #== 13
# p calculate_hours(-4231)# == 1
# p calculate_hours(-61)# == 22


# **Algorithm**
# 1. Create 'total_minutes' and set it equal to minutes passed to method
# 2. Create 'mm' a
# 3. If 'total_minutes' is negative then set 'mm' to 60
#   a. until 'total_minutes' equals 0
#     - 'mm' -= 1
#     - 'mm' = 59 if 'mm' == -1
#     - 'total_minutes' += 1
# 4. If 'total_minutes' is postive then set 'mm' to 0
#   a. until 'total_minutes' equals 0
#     - add one to 'mm'
#     - if 'mm' ever equals 60 then set 'mm' to 0
#     - subtract one from 'total_minutes'
# 5. return 'mm'



# # **Examples / Test Cases**
# p calculate_minutes(0) #== 0
# p calculate_minutes(-3) #== 57
# p calculate_minutes(35) #== 35
# p calculate_minutes(-1437) #== 3
# p calculate_minutes(3000) #== 0
# p calculate_minutes(800) #== 20
# p calculate_minutes(-4231)#== 29
