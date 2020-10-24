

def published(input_array)
  input_array.sort { |a, b| a[:published] <=> b[:published] } 
end











books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]


p published(books)

p books.sort_by { |book| book[:published] }     # the #sort_by method is an Enumerable. Array has a mutative version #sort_by!
