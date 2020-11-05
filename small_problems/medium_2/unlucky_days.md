**Problem**
Write a method that returns the number of Friday the 13ths in the year given by an argument. 
You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

Rules:
Explicit
  - Input: integer 
  - Output: integer
  - assume year is greater than 1752
  - return number of Friday the 13ths in given year

**Examples / Test Cases**
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2


**Data Structures**
- Date object
- (1..12)
- 
cwday → fixnum

**Algorithm**
1. create Integer variable called Friday_13th = 0
2. for range (1..12) create a Date object passing in range as month and 13 as day
2. use #cwday to get day of the week 
3. if day of the week equals Friday (Friday = 5) then Friday_13th += 1
2. return Friday