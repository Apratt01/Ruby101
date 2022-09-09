require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

system("clear")

MONTHS_IN_A_YEAR = 12

def prompt(message)
  puts("=> #{message}")
end

def invalid_message?
  prompt(MESSAGES['invalid'])
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

prompt(MESSAGES['welcome'])

name = ''

loop do
  prompt((MESSAGES['name']))
  name = gets.chomp.strip
  if name == ''
    invalid_message?
  else
    break
  end
end

prompt("Thank you #{name}, let's get started!")
prompt(MESSAGES['needed'])

loop do
  loan_amount = ''

  loop do
    prompt(MESSAGES['amount'])
    loan_amount = gets.chomp
    if valid_selection?(loan_amount)
      break
    else
      invalid_message?
    end
  end

  apr = ''

  loop do
    prompt(MESSAGES['interest'])
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
    prompt(MESSAGES['duration_year'])
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
    prompt(MESSAGES['duration_month'])
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

  prompt(MESSAGES['again'])
  answer = gets.chomp
  break unless answer.downcase() == ('y')
end
