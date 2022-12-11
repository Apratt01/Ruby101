=begin 

Write a method that takes a string argument and returns a new string that 
 contains the value of the original string with all consecutive duplicate 
characters collapsed into a single character. You may not use String#squeeze 
or String#squeeze!.

take the string, convert to an array, iterate through it,
if last letter is not current letter than add it to new string
return array

=end

def crunch(words)
  new_string = ''
  index = 0
  
  while index <= words.length - 1
    new_string << words[index] unless words[index] == words[index + 1]
    index += 1
  end 
  new_string
end 


puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''