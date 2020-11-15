def die_rolls(target, dice, previous = [])
  valid_rolls = []

  (1..6).each do |current_roll|

    if current_roll == target && dice == 1
      valid_rolls = [[current_roll]]
    elsif (target - current_roll) != 0 && dice !=1      
      remaining_dice = die_rolls((target - current_roll),(dice - 1))
      remaining_dice.each do |remaining_rolls|
        valid_rolls << remaining_rolls.unshift(current_roll)
      end
    end

  end

  valid_rolls
end

p die_rolls(6, 2)
# p die_rolls(6, 2)
p die_rolls(6, 3)
p die_rolls(9, 4)