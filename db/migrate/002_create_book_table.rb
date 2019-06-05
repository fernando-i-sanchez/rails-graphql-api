# frozen_string_literal: true

Sequel.migration do
  change do
    create_table :books do
      primary_key :id
      String :name
      String :genre
      Integer :author_id
    end
  end
end
