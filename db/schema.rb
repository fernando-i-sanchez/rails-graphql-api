Sequel.migration do
  change do
    create_table(:author_tables) do
      primary_key :id
      column :name, "varchar(255)"
      column :age, "integer"
    end
    
    create_table(:schema_info) do
      column :version, "integer", :default=>0, :null=>false
    end
  end
end
Sequel.migration do
  change do
    self << "INSERT INTO `schema_info` (`version`) VALUES (1)"
  end
end
