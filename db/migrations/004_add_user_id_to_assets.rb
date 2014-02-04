Sequel.migration do
  up do
    alter_table :assets do
      add_column :user_id, Integer
    end
  end
end
