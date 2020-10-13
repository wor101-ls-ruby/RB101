# sum_of_product_of_consecutive_integers.rb

#Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

def sum_integers(int_to_sum)
  (1..int_to_sum).inject(0) { |sum, n| sum + n }
end

def product_integers(int_to_product)
  (1..int_to_product).inject(1) { |product, n| product * n }
end


loop do
  puts ">> Please enter an integer greater than 0:"
  int = gets.chomp.to_i
  
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  sum_or_product = gets.chomp
  
  if sum_or_product == 's'
    sum = sum_integers(int)
    puts "The sum of the integers between 1 and #{int} is #{sum}."
  
  elsif sum_or_product == 'p'
    product = product_integers(int)
    puts "The product of the integers between 1 and #{int} is #{product}."
  else
    puts ">> You must select 's' or 'p'."
  end
end 
