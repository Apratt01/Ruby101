# added to a method to call on any string

def select_vowels(str)
  selected_chars = ''
  counter = 0
  
  loop do
    current_char = str[counter]

# select all vowels in given string

    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end
  
  counter += 1
  break if counter == str.size
end

selected_chars
end


select_vowels('the quick brown fox')

sentence = 'I wandered lonely as a cloud'
select_vowels(sentence)

number_of_vowels = select_vowels('hello world').size
puts number_of_vowels

