# mortgage_calculator.rb

# methods
def prompt(message)
  puts "=> #{message}"
end

def valid_float(string_number)
  string_number.to_f > 0
end

# variables
loan_amount = nil
apr = nil
monthly_interest = nil
loan_duration = nil

# greeting
prompt("Welcome to Mortgage Calculator!")

loop do # main loop
  # prompt user to enter the details of their mortgage
  loop do
    prompt("Please enter your loan amount:")
    loan_amount = gets.chomp
    valid_float(loan_amount) ? break : prompt("Please enter positive amount")
  end
  loop do
    prompt("Please enter your Annual Percentage Rate")
    prompt("Example: 4.5 for 4.5% or 3.2 for 3.2%")
    apr = gets.chomp
    if valid_float(apr)
      apr = (apr.to_f / 100)
      monthly_interest = apr / 12
      break
    else
      prompt("Please enter a valid Annual Percentage Rate")
    end
  end
  loop do
    prompt("Please enter your loan duration in months:")
    loan_duration = gets.chomp
    valid_float(loan_duration) ? break : prompt("Enter a valid loan duration")
  end

  prompt("Loan Amount = $#{loan_amount}")
  prompt("Annual Percentage Rate = #{format('%.2f', (apr * 100))}%")
  prompt("Loan Duration = #{loan_duration} months")
  prompt("Monthly Interest = #{format('%.2f', (monthly_interest * 100))}%")

  # does not work if commas are used in the loan amount
  monthly_payment = loan_amount.to_f *
                    (monthly_interest /
                    (1 - (1 + monthly_interest)**(-loan_duration.to_f)))

  prompt("Your monthly payment = $#{format('%.2f', monthly_payment)}")
  prompt("Enter Y to calculate another mortgage:")
  break if gets.chomp.downcase != 'y'
end

prompt("Thanks for using the Mortgage Calculator!")
