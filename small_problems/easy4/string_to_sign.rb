DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(word)
  value = 0
  digits = word.chars.map { |char| DIGITS[char] }
  digits.each { |num| value = 10 * value + num }
  value
end

def string_to_signed_integer(word)
  case word[0]
  when '-' then -string_to_integer(word[1..-1])
  when '+' then string_to_integer(word[1..-1])
  else          string_to_integer(word)
  end
end


puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100