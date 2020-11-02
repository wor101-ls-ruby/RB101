def get_grade(grade1, grade2, grade3)
  average = (grade1 + grade2 + grade3) / 3
  
  case 
  when average >= 90 then 'A'
  when average >= 80 then 'B'
  when average >= 70 then 'C'
  when average >= 60 then 'D'
  when average < 60 then 'F"'
  end
  
end

def get_grade_lesson(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"