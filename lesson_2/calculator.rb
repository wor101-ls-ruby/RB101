# calculator.rb

## Requirements:
 # ask for two numbers
 # aks for the type of operation to perform: add, subtract, multiply or divide
 # displays the reults
 
float1 = Float 
float2 = Float
operation = ""
quit = false

while quit == false
  
  print "Please enter your first value: "
  
  float1 = gets.chomp.to_f
  
  print "Please enter your second value: "
  
  float2 = gets.chomp.to_f
  
  loop do 
    print "Do you want to add, subtract, multiply or divide #{float1} and #{float2}? "
    
    operation = gets.chomp  
    case operation
      when "add"
        puts "#{float1} + #{float2} = #{float1 + float2}"
        break
      when "subtract"
        puts "#{float1} - #{float2} = #{float1 - float2}"
        break
      when "multiply"
        puts "#{float1} * #{float2} = #{float1 * float2}"
        break
      when "divide"
        puts "#{float1} / #{float2} = #{float1 / float2}"
        break 
      else
        puts "You must enter add, subtract, multiply, or divide."
    end 
  end
  print "Again?"
  again = gets.chomp
  break if again == "exit"
end