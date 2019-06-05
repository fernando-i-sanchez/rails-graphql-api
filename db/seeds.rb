require 'faker'

# create 20 authors
20.times do
  Author.create(
    name: Faker::Book.author,
    age: rand(12..100)
  )
end

# associate books to author
Author.all.each do |author|
  if author.books.empty?
    Book.create(
      name: Faker::Book.title,
      genre: Faker::Book.genre,
      author_id: author.id
    )
    next
  end
  Book.create(
    name: Faker::Book.title,
    genre: Faker::Book.genre,
    author_id: author.id
  )
end
