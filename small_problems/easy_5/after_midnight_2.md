**Problem**
As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

Rules:
Explicit
  - Input: A string representing time
  - Output: An positive integer
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

**Data Structures**
- String of 5 digits
  - 1st 2 digits represent hours
  - separated from last 2 digits representing minutes by ':'
-positive interger between 0 and 1439

**Algorithm**
