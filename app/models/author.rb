# frozen_string_literal: true

class Author < Sequel::Model
  one_to_many :books
end
