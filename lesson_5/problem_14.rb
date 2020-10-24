# Given this data structure write some code to return an array containing the colors of the fruits 
# and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

def answer(hash)
  return_array = []
  hash.each_value do |value|
    if value[:type] == 'fruit'
      return_array << value[:colors].map { |x| x.capitalize }
    elsif value[:type] == 'vegetable'
      return_array << value[:size].upcase
    end 
  end
  p return_array
end


hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}



p answer(hsh) == [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]