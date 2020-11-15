require 'date'

def friday_13th(year)
  fridays = 0
  (1..12).each { |month| fridays += 1 if Date.new(year, month, 13).cwday == 5 }
  fridays
end

# there's a #friday? method?!?!
def five_fridays(year)
  months = 0
  date = Date.new(year, 1, 1)
  
  (1..12).each do |month|
    fridays = 0 
  
    while date.month == month
      fridays += 1 if date.friday?
      date = date.next_day
    end
    
    months += 1 if fridays >= 5
  end
  p months
end


five_fridays(2020)
five_fridays(1983)

# **Algorithm**
# 1. create Integer variable called Friday_13th = 0
# 2. for range (1..12) create a Date object passing in range as month and 13 as day
# 2. use #cwday to get day of the week 
# 3. if day of the week equals Friday (Friday = 5) then Friday_13th += 1
# 2. return Friday

# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2
