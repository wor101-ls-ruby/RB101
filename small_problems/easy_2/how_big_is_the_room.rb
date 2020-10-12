# how_big_is_the_room.rb

# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

SQMETERS_TO_SQFEET = 10.7639      # do this whenever you have a number whose meaning may not be obvious at first glance
SQFEET_TO_SQINCHES = 144
SQINCHES_TO_SQCENTIMETERS = 6.4516

puts "Enter the length of the room in meters:"
length_meters = gets.chomp.to_f

puts "Enter the width of the room in metersL"
width_meters = gets.chomp.to_f

area_meters = (length_meters * width_meters).round(2)
area_feet = (area_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{area_meters} " + \
     "square meters ( #{area_feet} square feet)."
     
# Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.

puts "Enter the length in feet:"
length_feet = gets.chomp.to_f

puts "Enter the width in feet:"
width_feet = gets.chomp.to_f  

area_feet = (length_feet * width_feet).round(2)
area_inches = (area_feet * SQFEET_TO_SQINCHES).round(2)
area_centimeters = (area_inches * SQINCHES_TO_SQCENTIMETERS).round(2)

puts "The area of the room is #{area_feet} " + \
     "square feet ( #{area_inches} square inches " + \
     "and #{area_centimeters} square centimeters)."