=begin
Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

Input is integers
Ouput is strings and float rounded to 2 decimals

prompt user for the total bill
prompt user fo the the tip percdentage
Calculate tip
Calculate total with bill and tip
return both


Example:
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

=end

puts "What is the bill? "
bill = gets.chomp.to_f

puts"What is the tip percentage? "
tip_percent = gets.chomp.to_f

tip = (bill * (tip_percent / 100)).round(2)
total = (tip + bill.to_f).round(2)

puts "The tip is $#{format('%.2f', tip)}"
puts "The total is $#{format('%.2f', total)}"









