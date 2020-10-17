**Problem**
The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

You may not use ruby's Date and Time classes.

Rules:
  Explicit
  -Input: Integer
  -Output: a string in (hh:mm) format
  -cannot use Date or Time classes
  -if integer is negative the time is that many minutes before midnight
  -if integer is positive the time is that may mintues after midnight

  Implicit
  -negative integers that are too small will roll the clock back a day
  -postive integers that are too big will roll the clock forward

**Examples / Test Cases**
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

**Data Structures**
-input integer will be positive or negative
-integer 'total_hours' will equal total number of hours
-integer 'total_minutes' will equal total number of minutes left over after hours removed from input integer
-integer 'hh' will equal 0-23
-integer 'mm' will equal 0-59
-return string that concatenates 'hh' + ':' + 'mm'
  -if 'hh' or 'mm' are ony 1 digit then a 0 will have to be prepended

**Algorithm**
1. Create a integer variable called 'total_hours' and set it to 0 
2. Create a integer variable called 'total_minutes' and set it to 0 
3. Create a integer variable called 'hh' set to 0
4. Create a integer variable called 'mm' set to 0
3. Create a string variable called 'time'
4. Calculate the number of hours and minutes the input integer converts to
5. Set 'hh' that many hours less if negative and more if positve from midnight (24) 
6. Set 'mm' that many minutes less if negative and more if positive from the hour (60) 
7. Combine 'hh' and 'mm' into hh:mm format and save to string 'time'
8. Return 'time'


**Problem**
Calculate the number of hours 

Rules:
-Explicit
  -Input: positive or negative integer
  -Output: integer between 0 and 23

**Examples / Test Cases**
calculate_hours(0) == 0
calculate_hours(-3) == 23
calculate_hours(35) == 0
calculate_hours(-1437) == 0
calculate_hours(3000) == 2
calculate_hours(800) == 13
calculate_hours(-4231) == 1


**Data Structures**
-positive or negative input integer
-integer between 0 and 23

**Algorithm**
1. Create 'total_hours' varaible that equals input / 60
2. Creat 'hh' and set it to 0
3. if 'total_hours' is negative then set 'hh' to 24
  a. Until 'total_hours' equals 0 
    -subtract 1 from 'hh'
    -if 'hh' reaches -1 then set it to 24
    -add 1 to 'total_hours'
4. if 'total_hours' is positive then set 'hh' to 0
  a. Until 'total_hours' equals 0
    -add 1 to 'hh'
    -if 'hh' reaches 24 then set it to 0
    -subtract 1 from 'total_hours'
5. return 'hh'

**Problem**
Calculate the number of minutes

Rules
-Input: Integer representing total number of mintues
-Output: Integer between 0 and 59

**Examples / Test Cases**
calculate_minutes(0) == 0
calculate_minutes(-3) == 57
calculate_minutes(35) == 35
calculate_minutes(-1437) == 3
calculate_minutes(3000) == 0
calculate_minutes(800) == 20
calculate_minutes(-4231) == 29

**Data Structures**
-'total_minutes' that is the is either positive or negative
-'mm' that is an integer between 0 and 59

**Algorithm**
1. Create 'total_minutes' and set it equal to minutes passed to method
2. Create 'mm' a
3. If 'total_minutes' is negative then set 'mm' to 60
  a. until 'total_minutes' equals 0
    - 'mm' -= 1
    - 'mm' = 59 if 'mm' == -1
    - 'total_minutes' += 1
4. If 'total_minutes' is postive then set 'mm' to 0
  a. until 'total_minutes' equals 0
    - add one to 'mm'
    - if 'mm' ever equals 60 then set 'mm' to 0
    - subtract one from 'total_minutes'
5. return 'mm'


