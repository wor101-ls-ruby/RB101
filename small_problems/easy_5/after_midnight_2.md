**Problem**
As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. 
Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

Rules:
Explicit
  - Input: A string representing time
  - Output: A positive integer with a range of 0..1439
Implicit:
  - Time will be formatted in military time
  - consists of 5 digits
  - The first 2 chars represent hours and are separated from the last 2 chars representing minutes by a ':'
  - Midnight should return 0

**Examples / Test Cases**
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0
after_midnight('10:34') == 634
before_midnight('10:34') == 806

**Data Structures**
- String of 5 digits
  - 1st 2 digits represent hours
  - separated from last 2 digits representing minutes by ':'
- positive interger between 0 and 1439
- Global variable called MINUTES_PER_DAY that equals 1439

**Algorithm - Before Midnight**
1. create hour variable 
2. Create minutes variable
3. Create total_minutes variable and set to 0
3. set variables using .split(/:/) on the input string
  - if hour = 24 then set it to 0
4. Convert variables to integers
5. Multiply hour by 60 
6. Set total_minutes to hour plus minutes
7. Return MINUTES_PER_DAY minus total_minutes + 1
8. 

**Algorithm - After Midnight**
1. create hour variable 
2. Create minutes variable
3. Create total_minutes variable and set to 0
3. set variables using .split(/:/) on the input string
  - if hour = 24 then set it to 0
4. Convert variables to integers
5. Multiply hour by 60 
6. Set total_minutes to hour plus minutes
7. return total_minutes