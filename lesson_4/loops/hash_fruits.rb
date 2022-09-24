produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_list) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
  produce_keys = produce_list.keys
  selected_fruits = {}
  counter = 0
  
  loop do 
    
    break if counter == produce_keys.size # to deal with empty hash
    
    current_key = produce_keys[counter]
    current_value = produce_list[current_key]
    
    if current_value == 'Fruit'
      selected_fruits[current_key] == current_value
    end
    
    counter += 1
    
  end
  
  select_fruit()
  
end