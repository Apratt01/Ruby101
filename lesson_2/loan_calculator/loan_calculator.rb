require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

MONTHS_IN_A_YEAR = 12

def prompt(message)
  puts("=> #{message}")
end

def invalid_message?
  prompt(MESSAGES['invalid'])
end

def valid_selection?(input)
  (input.to_i.to_s == input && input.to_i > 0) || (sprintf("%.02f", input) == input  && input.to_f > 0)
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

def monthly_calc(apr, loan_amount, loan_duration)
  monthly_interest = interest_rate_conversion(apr)

  if monthly_interest == 0
    (loan_amount.to_f / loan_duration.to_f)
  else
    loan_amount.to_f * (monthly_interest.to_f /
    (1 - (1 + monthly_interest.to_f)**(-loan_duration.to_f)))
  end
end

prompt(MESSAGES['welcome'])

system("clear")

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
  loan_month = ''

  loop do
    year_answer = ''
    month_answer = ''

    loop do
      prompt(MESSAGES['duration_year'])
      year_answer = gets.chomp.downcase
      if (year_answer == 'no' || year_answer == 'n')\
        || year_answer == 'yes' || year_answer == 'y'
        break
      else
        invalid_message?
      end
    end

    if year_answer == 'y' || year_answer == 'yes'
      loop do
        prompt(MESSAGES['time'])
        loan_year = gets.chomp
        if valid_selection?(loan_year)
          break
        else
          invalid_message?
        end
      end
    end

    loop do
      prompt(MESSAGES['duration_month'])
      month_answer = gets.chomp.downcase
      if (month_answer == 'no' || month_answer == 'n')\
        || (month_answer == 'yes' || month_answer == 'y')
        break
      else
        invalid_message?
      end
    end

    if month_answer == 'yes' || month_answer == 'y'
      loop do
        prompt(MESSAGES['time'])
        loan_month = gets.chomp
        if valid_selection?(loan_month)
          break
        else
          invalid_message?
        end
      end
    end

    if (year_answer == 'n' || year_answer == 'no')\
      && (month_answer == 'n' || month_answer == 'no')
      prompt(MESSAGES['time_error'])
    else
      break
    end
  end

  loan_duration = loan_time_calc(loan_month, loan_year)
  payment =
    monthly_calc(apr, loan_amount, loan_duration)
  
  prompt(
    "#{name} for a loan amount of $#{'%0.2f' % loan_amount.to_f}
    with an APR of #{'%0.2f' % apr.to_f}% for #{loan_duration.round(0)} months;
    the payment is $#{'%0.2f' % payment}."
  )

  prompt(MESSAGES['again'])
  answer = gets.chomp
  break unless answer.downcase() == ('y')
end

prompt(MESSAGES['goodbye'])
