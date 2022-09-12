VALID_CHOICES = {"r" => 'rock', "p" => 'paper', "sc" => 'scissors', "sp" => 'spock', "l" => 'lizard'}

def prompt(message)
  puts("=> #{message}")
end

def print_choices
  VALID_CHOICES.each do |key, value|
    prompt("Please choose #{key} for #{value}")
  end
end

def random_choices
  arr = []
  VALID_CHOICES.each do |key, value|
    arr << value
  end
  arr.sample
end

def printed_choices(player_select, computer_select)
  puts("You chose: #{VALID_CHOICES[player_select]}; the Computer chose #{computer_select}.")
end

def win?(first, second)
  first = VALID_CHOICES[first]
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock'))
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    ("It's a tie!")
  end
end

choice = ''

loop do
  loop do
    print_choices
    choice = gets.chomp.downcase
    if VALID_CHOICES.key?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  
  computer_choice = random_choices
  printed_choices(choice, computer_choice)
  win?(choice, computer_choice)
  display_result(choice, computer_choice)
  
  prompt("Do you want to play again?")
  answer = gets.chomp
  
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")

