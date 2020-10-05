# optional_arguments_redux.rb

require 'date'

puts Date.new               # 0000-01-01 <=== wrong, should have looked at documenation closer. Default value is -4712 for year
puts Date.new(2016)         # 2016-01-01
puts Date.new(2016, 5)      # 2016-05-01
puts Date.new(2016, 5, 13)  # 2016-05-13

# https://docs.ruby-lang.org/en/2.7.0/Date.html
# [] shows the arguments are optional

