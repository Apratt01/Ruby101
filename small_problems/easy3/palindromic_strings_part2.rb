=begin 

Write another method that returns true if the string passed as an argument is a 
palindrome, false otherwise. This time, however, your method should be 
case-insensitive, and it should ignore all non-alphanumeric characters. If you 
wish, you may simplify things by calling the palindrome? method you wrote in the 
previous exercise.

use chars to break into an array
use select to put back into a new string
use palindrom method to check for reverse

=end

def palindrome?(strings)
  strings == strings.reverse
end


def real_palindrome?(strings)
  clean = strings.gsub(/[,\/'' ']/, '').downcase
  palindrome?(clean)
end 

  
puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false

