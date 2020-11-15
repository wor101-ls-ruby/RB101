# create an array of 5 number between 1 & 6

def roll(die)
  rand(1..die)
end

def roll_dice(num, die)
  dice = []
  num.times do 
    dice << roll(die)
  end
  dice
end

def roll_different_dice(array)
  rolls = []
  array.each do |dice_set|
    rolls << roll_dice(dice_set[0], dice_set[1])
  end
  rolls
end

roll_dice(3, 6)

sneak_attack = [[1, 20], [1,6], [3, 6]]

p roll_different_dice(sneak_attack)
