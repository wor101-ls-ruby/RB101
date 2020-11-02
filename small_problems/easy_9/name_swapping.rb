def swap_name(input_name)
  name_array = input_name.split
  name_array[1] + ', ' + name_array[0]    # can pull a reverse.join(', ') to shorten it
end






p swap_name('Joe Roberts') == 'Roberts, Joe'