# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :book, Types::BookType, null: true do
      description 'Find book by id'
      argument :id, ID, required: true
    end
    field :books, Types::BookType, null: true do
      description 'Get all books'
    end

    def book(id:)
      Book[id]
    end

    def books
      Book.all
    end
  end
end
