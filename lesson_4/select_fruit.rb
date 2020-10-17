# select_fruit.rb

# Let's now take a look at an example with hashes. In this example we want to select the 
# key-value pairs where the value is 'Fruit'.

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(items)
  fruit = {}
  items.each_pair { |key, value| value == 'Fruit' ? fruit[key] = value : next }
  fruit
end

def select_fruit_counter(items)
  fruit = []
  counter = 0
  array_of_items = items.to_a
  loop do
    break if counter == array_of_items.size   # put the break at the top in case hash is empty
    if array_of_items[counter][1] == 'Fruit'
      fruit << array_of_items[counter]
    end
    counter += 1
    
  end
  fruit.to_h

end

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

p select_fruit_counter(produce)