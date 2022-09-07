# START
# 
# Ask for a name
# SET name to user input
# PRINT name in a greeting

# GET Ask for loan amount
# SET loan_amount = GET ( will need validation is_a?float )
# GET the APR  ( will need validation is_a?float, is annual vs monthly? )
# SET apr = GET 
#   Method to convert to monthly interest rate


# GET loan duration ( will need validation is in months or years, integer or float )
#                   ( edge case - can it be a float? )
# SET loan_month = ''
# SET loan_year = ''
#   
#   LOOP Clarify year or months
#     IF GET is in years
#       THEN loan_year / 12
#     ELSE
#       loan_month is good to go
# 
# Calculate monthly payment using m = p * (j / (1 - (1 + j)**(-n)))
# END

def prompt(message)
  puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def invalid_message?()
  prompt("Sorry that is not a valid response, please try again.")
end

monthly_payment = ''

def monthly_payment_calc(loan_amount, zero_interest, monthly_interest, loan_duration)
  
  p loan_amount.to_f
  p monthly_interest
  p loan_duration
  
  zero_interest == 0 ? monthly_payment = (loan_amount / loan_duration) : monthly_payment = loan_amount* (monthly_interest / (1 - ( 1 + monthly_interest)**(-loan_duration)))
  return monthly_payment.round(2)
end
  
prompt("Welcome the the loan calculator!")
prompt("First, tell me your name?")
name = gets.chomp

prompt("Thank you #{name}, let's get started!")
prompt("To use this calculator you will need the amount of your loan, the annual percentage rate, and how long the loan is for.")

loan_amount = ''
      
loop do
  prompt("What is your loan amount?")
  loan_amount = gets.chomp
  integer?(loan_amount) ? break : invalid_message?()
end

zero_interest = ''
apr = ''

loop do
  prompt("What is the annual interest rate on your loan?")
  prompt("Please enter in the format 5 for 5% or 5.5 for 5.5%.")
  apr = gets.chomp
  if apr == "0"
    zero_interest = 0
    break
  elsif integer?(apr)
    break
  elsif
    float?(apr)
    break
  else
    invalid_message?()
  end 
end

apr_percent = apr.to_f / 100
monthly_interest = apr_percent / 12

loop do
  prompt("How long is your loan? (ex. 10)")
  loan_duration = gets.chomp
  integer?(loan_duration) ? break : invalid_message?()
end

loan_time = ''
loan_duration = ''

loop do
  prompt("Is the length of your loan in years or months? m for month, y for years")
  loan_time = gets.chomp.downcase
  if loan_time == "m"
    loan_duration = loan_duration.to_f
    break
  elsif loan_time == "y"
    loan_duration = loan_duration.to_f * 12
    break
  else
    invalid_message?()
  end
end

payment = monthly_payment_calc(loan_amount, zero_interest, monthly_interest, loan_duration)

puts("#{name}, for a loan amount of $#{loan_amount}, at an APR of #{interest_rate.round(2)}, for #{loan_duration.to_i} months, your monthly payment is $#{payment}.")
  

