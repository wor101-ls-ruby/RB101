def die_rolls(target, dice, previous = [])
  valid_rolls = previous

  (1..6).each do |current_roll|
    if current_roll == target && dice == 1
      valid_rolls << current_roll
    elsif (target - current_roll) != 0 && dice !=1
      
      valid_rolls << die_rolls((target - 1),(dice - 1), previous).flatten

    end

  end

  valid_rolls
end

p die_rolls(9, 2)
# p die_rolls(6, 2)
# p die_rolls(6, 3)