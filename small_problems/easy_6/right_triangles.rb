def triangle(n)
  count = 0
  while count < n
    puts (' ' * (n-1-count)) + '*' * (count + 1)
    count += 1
  end
  
end







triangle(5)

#     *
#   **
#   ***
# ****
# *****

triangle(9)