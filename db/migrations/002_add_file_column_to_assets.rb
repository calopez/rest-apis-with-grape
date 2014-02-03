Sequel.migration do
  up do
    alter_table :assets do
      add_column :file, String
    end
  end
end
