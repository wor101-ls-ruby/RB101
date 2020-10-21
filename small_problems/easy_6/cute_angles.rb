DEGREE = "\xC2\xB0"
MINUTES_SECONDS = 60
SECONDS_PER_DEGREE = 3600

def remainder(float)
  remainder = (float - float.to_i).round(4)
  remainder * MINUTES_SECONDS
end


def convert_float(float)
  angle_minutes_as_float = remainder(float)
  angle_seconds_as_float = remainder(angle_minutes_as_float)
  
  [angle_minutes_as_float.to_i, angle_seconds_as_float.to_i]
end

def format_minutes_and_seconds(int)
  int >= 10 ? int.to_s : '0'+int.to_s
end

def outside_360_range(angle)
  degrees = angle
  if angle > 360
    degrees = angle.divmod(360)[1]
  else
    while degrees < 0
    degrees += 360
    end
  end
  degrees
end


# **Data/Algorithm**
# -if float is greater than 360 use #divmod to get the remainder of the float divided by 360
# -if float is less than 360 use #divmod to get the remainder and subtract that from 360

def dms(angle)
  if angle > 360 || angle < 0
    degrees = outside_360_range(angle)
  else
    degrees = angle.to_i
  end
  minutes, seconds = convert_float(angle)
  minutes_string = format_minutes_and_seconds(minutes)
  seconds_string = format_minutes_and_seconds(seconds)
  %(#{degrees}#{DEGREE}#{minutes_string}'#{seconds_string}")
end 

def dms_divmod(angle)
  total_seconds = angle * MINUTES_SECONDS * MINUTES_SECONDS
  degrees, remainder = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remainder.divmod(MINUTES_SECONDS).map {|x| x.to_i}
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")
# puts dms(400)# == %(40°00'00")
# puts dms(-40) #== %(320°00'00")
# puts dms(-420) #== %(300°00'00")

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# puts dms(30) 
# puts dms(76.73) 
# puts dms(254.6) 
# puts dms(93.034773) 
# puts dms(0) 
# puts dms(360) 

# puts dms_divmod(30) #== %(30°00'00")
# puts dms_divmod(76.73) #== %(76°43'48")
# puts dms_divmod(254.6) #== %(254°36'00")
# puts dms_divmod(93.034773)# == %(93°02'05")
# puts dms_divmod(0) #== %(0°00'00")
# puts dms_divmod(360) #== %(360°00'00") || dms(360) == %(0°00'00")
