=begin

Build a program that displays when the user will retire and how many years she 
has to work till retirement.

input = integer
output = integer

user input to get age
user input to get retirmenet age
establish current year
calculate year of retirement
calculate how many years to go
output information

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
=end

puts "What is your age? "
age = gets.chomp.to_i

puts "At what age would you like to retire? "
retire_age = gets.chomp.to_i

now = Time.now.year

retire_years = retire_age - age
retire_year = now + retire_years

puts "It's #{now}. You will retire in #{retire_year}."
puts "You have only #{retire_years} of work to go!"

