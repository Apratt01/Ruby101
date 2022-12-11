=begin
Write a method that takes an array of strings, and returns an array of the same 
string values, except with the vowels (a, e, i, o, u) removed.

use map to iterate through the array and delete to remove vowels

=end

def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU')}
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']