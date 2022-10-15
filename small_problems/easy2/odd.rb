=begin

Print all odd numbers from 1 to 99, inclusive, to the console, 
with each number on a separate line.

.each to go through a range 1..100
puts with a new line if % != 0

=end

(1..100).each do |num|
  if num.odd?
    puts num
  end 
end 

100.times { |i| puts i if i.odd? }

