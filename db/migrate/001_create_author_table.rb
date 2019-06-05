# frozen_string_literal: true

Sequel.migration do
  change do
    create_table :author_tables do
      primary_key :id
      String :name
      Integer :age
    end
  end
end
