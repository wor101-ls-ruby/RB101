def toggle(n)
  switches = Array.new(n, 'off')
  round = 1
  
  until round > n
    switches.each_with_index do |switch, index|
      if (index + 1) % round == 0 
        if switch == 'off'
          switches[index] = 'on'
        else
          switches[index]  = 'off'
        end
      end
      puts switch + " at index# #{index}"
      
    end
    
    puts "End of round #{round}"
    puts "*********************"
    puts ""
    round += 1
  end
  p switches
end






# **Algorithm**
# 1. Create an array of 'n' elements and set each to 'off'
# 2. create a loop that will loop 'n' times
# 3. on each loop only change element that correspond to multiples of the round #
# 4. if 'off' change to 'on', and if 'on' change to 'off'
# 5. return array




p toggle(5) == ['on', 'off', 'off', 'on', 'off']

p toggle(10) 