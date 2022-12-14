=begin

Write a method that takes a year as input and returns the century. The return 
value should be a string that begins with the century number, and ends with st, 
nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise 
dthe 20th century.


centuy = current year / 100 + 1
except for multiples of 100, then century / 100
suffix 'th' 'nd' 'rd' 'st' depends on last digit of the century
except for 11, 12, 13 then = 'th' else century % 10
combine string rep of the century with suffix

=end

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end 

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10
  
  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end 
end 

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'