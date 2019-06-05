# frozen_string_literal: true

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
  rand(1..5).times do
    Book.create(
      name: Faker::Book.title,
      genre: Faker::Book.genre,
      author_id: author.id
    )
  end
end
