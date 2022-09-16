WINS = {"rock" => ['scissors', 'lizard'],
        "paper" => ['rock', 'spock'],
        "scissors" => ['paper', 'lizard'],
        "spock" => ['scisors', 'rock'],
        "lizard" => ['spock', 'paper']}
        
VALID_CHOICES = {"r" => 'rock', "p" => 'paper', 
                "sc" => 'scissors', "sp" => 'spock', "l" => 'lizard'}

#def win?(first, second)
  #first = VALID_CHOICES[first]
  #WINS.each do |key, value|
  #  (key == first && value.include?(second)) ||
  #  (key == second && value.include?(first)) ||
  #  (key == first && key == second)
  #  end
#end

def random_choices
  arr = []
  VALID_CHOICES.each do |key, value|
    arr << value
  end
  arr.sample
end

choices = random_choices
computer = random_choices

puts "choice = #{choices}"
puts "computer = #{computer}"

x = WINS.fetch(choices)
y = WINS.fetch(computer)
p x
p y

print "Choice is #{choices} and beats these values: #{x}"
print "Computer is #{computer} beats  these values: #{y}"
p x.include?(computer)

if choices == computer
  print 'This is a tie'
elsif x.include?(computer)
  print 'Choice wins'
else
  print 'Computer wins'
end

#  end
#  if value.include?(computer)
#    print "Computer is the value of " 
#  end
#  if key == computer
#    p key + "computer key"
#  end
#end


#if win?(choices, computer)
#  p 'yes'
#elsif win?(choices, computer)
#  p 'no'
#else
#  p 'tie'
#end