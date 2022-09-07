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

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

loan_amount = ''

loop do
  puts ("What is your loan amount?")
  loan_amount = gets.chomp
  if integer?(loan_amount)
    loan_amount = loan_amount.to_i
    break
  else
    puts("Sorry, that is not a number, please try again.")
  end
end

annual_interest = ''
monthly_interest = ''

loop do
  puts ("What is the annual interest rate on your loan? ")
  puts ("Please enter in the foramat 0.00, ie 5% would be 0.05.")
  annual_interest = gets.chomp
  if float?(annual_interest)
    monthly_interest = annual_interest.to_f/12
    break
  else
    puts("Sorry, that is not a valid interest rate, please try again.")
  end
end

loan_duration = ''

loop do
  puts("How long is your loan?")
  loan_duration = gets.chomp
  if integer?(loan_duration)
    break
  else
    puts("Sorry that is not a valid number, please try again")
  end
end

loan_time = ''
loan_duration_annual = ''
loan_duration_month = ''

loop do
  puts("Is your loan in years or months? m for month, y for years")
  loan_time = gets.chomp.downcase
  if loan_time == "m"
    loan_duration_month = loan_duration.to_i
    p loan_duration_month
    break
  elsif loan_time == "y"
    loan_duration_annual = loan_duration.to_i / 12
    p loan_duration_annual
    break
  else
    puts("Sorry, that is not a valid selection, please try again")
  end
end

p loan_duration_annual
p loan_duration_month

#puts monthly_payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-loan_time)))
#puts("For a loan of $#{loan_amount} at an interest rate of #{monthly_interest} for #{loan_time} months, your monthly payment is $#{monthly_payment}.")