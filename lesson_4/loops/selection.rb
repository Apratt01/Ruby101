alphabet = 'abcdefghijklmnopqrstuvwxyz' #set a string of alphabet
selected_chars = '' # set an empty variable string
counter = 0 # counter for the loop

loop do
  current_char = alphabet[counter] # assigns the letter at that index number that counter is initalized to
  
  if current_char == 'g' # selects for g
    selected_chars << current_char # mutates the empty variable to hold the selected char
  end
  
  counter += 1
  break if counter == alphabet.size # when the counter reaches the end of alphabet, break
  
end

puts selected_chars