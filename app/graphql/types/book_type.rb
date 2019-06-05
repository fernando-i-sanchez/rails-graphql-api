module Types
  class BookType < Types::BaseObject
    field :name, String, null: true
    field :genre, String, null: true
  end
end
