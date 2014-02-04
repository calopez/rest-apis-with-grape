Sequel.migration do
  up do
    create_table :assets do
      primary_key :id
      String :title, null: false
    end
  end

  down do
    drop_table :assets
  end
end
