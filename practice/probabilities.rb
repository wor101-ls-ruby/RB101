def die_rolls(target, dice, previous = [])
  valid_rolls = []

  (1..6).each do |current_roll|
    test_rolls = []
    test_rolls << current_roll
    if current_roll == target && dice == 1
      valid_rolls = valid_rolls + test_rolls
    elsif (target - current_roll) != 0 && dice !=1      
      test_rolls << die_rolls((target - current_roll),(dice - 1)).flatten
    end
    if test_rolls.flatten.sum == target
      valid_rolls = valid_rolls + test_rolls
    end


  end

  valid_rolls
end

p die_rolls(6, 2)
# p die_rolls(6, 2)
# p die_rolls(6, 3)