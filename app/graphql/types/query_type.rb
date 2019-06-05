# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    description 'root query'

    field :book, Types::BookType, null: true do
      description 'Find book by id'
      argument :id, ID, required: true
    end
    field :books, [Types::BookType], null: true do
      description 'Get all books'
    end

    def book(id:)
      Book[id]
    end

    def books
      Book.all
    end

    field :author, Types::AuthorType, null: true do 
      description 'Find author by id'
      argument :id, ID, required: true
    end
    field :authors, [Types::AuthorType], null: true do
      description 'get all authors'
    end

    def author(id:)
      Author[id]
    end

    def authors
      Author.all
    end
  end
end
