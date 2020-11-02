def negative(int)
  int.negative? ? int : int * -1
end


def negative_shorter(number)
  -number.abs
end





p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby