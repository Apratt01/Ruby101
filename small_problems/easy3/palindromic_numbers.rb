#take the numbers
#turn them into a string
#check string.reverse

def palindromic_number?(number)
  number = number.to_s
  number == number.reverse
end 

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true