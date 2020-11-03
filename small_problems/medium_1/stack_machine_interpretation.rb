
def push(reg, stack)
  stack << reg
end 

def add(reg, stack)
  reg + stack.pop
end 

def subt(reg, stack)
  reg - stack.pop
end

def mult(reg, stack)
  reg * stack.pop
end 

def div(reg, stack)
  reg / stack.pop
end

def mod(reg, stack)
  reg % stack.pop
end

def pop(reg, stack)
  stack.pop
end

def printm(reg, stack)
  puts reg
end

def empty_stack(stack, operation)
  error = false
  if stack.size == 0
    puts "ERROR: Stack is empty and #{operation} cannot be performed"
    error = true
  end
  error
end

# - n Place a value n in the "register". Do not modify the stack.
# - PUSH Push the register value on to the stack. Leave the value in the register.
# - ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# - SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# - MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# - DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# - MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# - POP Remove the topmost item from the stack and place in register
# - PRINT Print the register value
# - All operations are integer operations (which is only important with DIV and MOD).

def minilang(commands)
  register = 0
  stack = []
  command_array = commands.split
  command_array.each do |command|
    case command
    when 'PUSH' then push(register, stack)
    when 'ADD' then register = add(register, stack)
    when 'SUB' then register = subt(register, stack)
    when 'MULT' then register = mult(register, stack)
    when 'DIV' then register = div(register, stack)
    when 'MOD' then register = mod(register, stack)
    when 'POP' then register = pop(register, stack)
    when 'PRINT' then printm(register, stack)
    when /\d/ then register = command.to_i
    end
     

    
  end

  puts "Register = #{register}"
  puts "Stack = #{stack}"
  puts "*******"
  puts ""
end





# **Main Algorithm**
# 1. create Integer variable called register and set equal to 0
# 2. create an empty array called stack
# 3. create a command array and set it equal to the user input split
# 4. Iterate over the input array and use a case statement to call on proper method












# minilang('2 PUSH ADD')




# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# (3 + (4 * 5) - 7) / (5 % 3) => should reutrn 8
minilang('ADD')

minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV')