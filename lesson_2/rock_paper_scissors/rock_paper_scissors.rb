require 'yaml'
MESSEGES = YAML.load_file('rock_paper_scissors.yml')

VALID_CHOICES = { "r" => 'rock', "p" => 'paper',
                  "sc" => 'scissors', "sp" => 'spock', "l" => 'lizard' }
WINS = { "rock" => ['scissors', 'lizard'],
         "paper" => ['rock', 'spock'],
         "scissors" => ['paper', 'lizard'],
         "spock" => ['scisors', 'rock'],
         "lizard" => ['spock', 'paper'] }

def prompt(message)
  puts("=> #{message}")
end

def invalid_message?
  prompt(MESSEGES['invalid'])
end

def select_choice
  show_choices
  player_choice_abbr = gets.chomp.downcase
  valid_selection?(player_choice_abbr)
end

def show_choices
  VALID_CHOICES.each do |key, value|
    prompt("Please choose #{key} or #{value}")
  end
end

def valid_selection?(choice)
  if VALID_CHOICES.key?(choice)
    VALID_CHOICES[choice]
  elsif VALID_CHOICES.value?(choice)
    choice
  else
    prompt(MESSEGES['invalid'])
    select_choice
  end
end

def random_choice
  arr = []
  VALID_CHOICES.each do |_key, value|
    arr << value
  end
  arr.sample
end

def print_choices(player, computer)
  puts("You chose: #{player}; the Computer chose #{computer}.")
end

def player_win?(player, computer)
  your_choice = WINS.fetch(player)
  your_choice.include?(computer)
end

def computer_win?(player, computer)
  computer_choice = WINS.fetch(computer)
  computer_choice.include?(player)
end

def win?(player, computer)
  if player_win?(player, computer)
    1
  else
    0
  end
end

def display_result(player, computer)
  if player == computer
    prompt("It's a tie!")
  elsif player_win?(player, computer)
    prompt("You won!")
  else
    prompt("Computer won!")
  end
end

def tally(player, computer)
  if player > computer
    prompt("You are winning #{player} to #{computer}.")
  elsif player < computer
    prompt("Computer is winning #{computer} to #{player}.")
  else
    prompt(MESSEGES['tie'])
    prompt("You each have #{player} wins.")
  end
end

def announce_winner(player, computer)
  if player == 3
    prompt("You are the winner with 3 games to the computer's #{computer}!")
  else
    prompt("The computer is the winner with 3 games to your #{player}")
  end
end

system('clear')

name = ''

loop do
  prompt(MESSEGES['name'])
  name = gets.chomp.strip
  if name == ''
    invalid_message?
  else
    break
  end
end

prompt("#{name}, #{MESSEGES['welcome']}")

loop do
  prompt(MESSEGES['rules'])
  rules = gets.chomp.downcase
  if rules == 'y' || rules == 'yes'
    prompt(MESSEGES['rules_listed'])
    prompt(MESSEGES['started'])
    break
  elsif rules == 'n' || rules == 'no'
    prompt(MESSEGES['started'])
    break
  else
    invalid_message?
  end
end

loop do
  player_count = 0
  computer_count = 0

  loop do
    choice = select_choice
    computer_choice = random_choice
    print_choices(choice, computer_choice)
    display_result(choice, computer_choice)
    player_count += win?(choice, computer_choice)
    computer_count += win?(computer_choice, choice)
    if player_count != 3 && computer_count != 3
      tally(player_count, computer_count)
    else
      announce_winner(player_count, computer_count)
      break
    end
  end

  prompt("Do you want to play again?")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')

  prompt(MESSEGES['rules_again'])
  answer = gets.chomp.downcase
  if answer == 'y' || answer == 'yes'
    prompt(MESSEGES['short_rules'])
    prompt("Ok, #{name} let's play again!")
  else
    prompt("Ok #{name} let's play again!")
  end
end

prompt("Thank you for playing #{name}. Goodbye!")
