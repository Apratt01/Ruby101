DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def signed_integer_to_string(number)
  word = ''
  remainder = number
  remainder *= -1 if remainder < 0
  while remainder > 0
      word = word + DIGITS[remainder % 10]
      remainder /= 10
  end
  
  word = word.reverse
  word = '0' if number == 0
  word.prepend('+') if number > 0
  word.prepend('-') if number < 0
  word
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'