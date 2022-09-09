MONTHS_IN_A_YEAR = 12

def prompt(message)
  puts("=> #{message}")
end

def invalid_message?
  prompt("Sorry that is not a valid response, please try again.")
end

def valid_selection?(input)
  (input.to_i.to_s == input || input.to_f.to_s == input) && input.to_f > 0
end

def interest_rate_conversion(apr)
  if apr.to_f > 1
    (apr.to_f / 100) / MONTHS_IN_A_YEAR
  else
    apr.to_f / MONTHS_IN_A_YEAR
  end
end

def loan_time_calc(loan_month, loan_year)
  loan_year.to_f * MONTHS_IN_A_YEAR + loan_month.to_f
end

def monthly_calc(apr, loan_month, loan_year, loan_amount)
  monthly_interest = interest_rate_conversion(apr)
  loan_duration = loan_time_calc(loan_month, loan_year)

  if monthly_interest == 0
    (loan_amount.to_f / loan_duration.to_f)
  else
    loan_amount.to_f * (monthly_interest.to_f /
    (1 - (1 + monthly_interest.to_f)**(-loan_duration.to_f)))
  end
end

prompt("Welcome to the the loan calculator!")
prompt("First, tell me your name?")
name = gets.chomp

prompt("Thank you #{name}, let's get started!")
prompt("To use this calculator you will need the amount of your loan,
the annual percentage rate, and how long the loan is for.")

loop do
  loan_amount = ''

  loop do
    prompt("What is your loan amount?")
    loan_amount = gets.chomp
    valid_selection?(loan_amount) ? break : invalid_message?
  end

  apr = ''

  loop do
    prompt("What is the annual interest rate on your loan?")
    apr = gets.chomp
    if apr == "0"
      break
    elsif valid_selection?(apr)
      break
    else
      invalid_message?
    end
  end

  loan_year = ''
  loop do
    prompt("How long is your loan in years?
    (If the loan is in months, please enter 'x' to skip)")
    loan_year = gets.chomp
    if loan_year.downcase == 'x'
      break
    elsif valid_selection?(loan_year)
      break
    else
      invalid_message?
    end
  end

  loan_month = ''

  loop do
    prompt("Please enter months, or additional months ('x' to skip.)")
    loan_month = gets.chomp
    if loan_month.downcase == 'x'
      break
    elsif valid_selection?(loan_month)
      break
    else
      invalid_message?
    end
  end

  payment =
    monthly_calc(apr, loan_month, loan_year, loan_amount)

  prompt("#{name} your monthly payment is $#{payment.round(2)}.")

  prompt("Would you like to calculate anouth loan?
  (choose y for yes, or any other key to exit the program.)")
  answer = gets.chomp
  break unless answer.downcase() == ('y')
end
