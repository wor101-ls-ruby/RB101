def on_and_off(array, n)
  switches = array
  round = 1
  until round > n
    switches.each_with_index do |switch, index|
      next if (index + 1) % round != 0 
      switch == 'off' ? switches[index] = 'on' : switches[index]  = 'off'
    end
    round += 1
  end
  switches
end

def toggle(n)
  switches = Array.new(n, 'off')
  switches = on_and_off(switches, n)
  
  on = []
  switches.each_with_index { |switch, index| on << (index + 1) if switch == 'on' }
  p on
end






# **Algorithm**
# 1. Create an array of 'n' elements and set each to 'off'
# 2. create a loop that will loop 'n' times
# 3. on each loop only change element that correspond to multiples of the round #
# 4. if 'off' change to 'on', and if 'on' change to 'off'
# 5. return array




p toggle(5) == [1, 4]

p toggle(10) == [1, 4, 9]

p toggle(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]