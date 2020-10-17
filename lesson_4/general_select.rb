# general_select.rb

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def general_select(produce_list, selction_criteria)
  produce_keys = produce_list.keys
  counter = 0
  selected_produce = {}

  loop do
    break if counter == produce_list.size
   
    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == selction_criteria
    selected_produce[current_key] = current_value
    end
    counter += 1
  end

  selected_produce
end

def select_letter(string, letter)
  letter_string = ''
  counter = 0

  loop do
    break if counter == string.size

    letter_string << string[counter] if string[counter] == letter

    counter += 1
  end

  letter_string
end

# p general_select(produce, 'Fruit')     # => {"apple"=>"Fruit", "pear"=>"Fruit"}
# p general_select(produce, 'Vegetable') # => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
# p general_select(produce, 'Meat')      # => {}

question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""