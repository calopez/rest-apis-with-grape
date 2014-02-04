Sequel.migration do
  up do
    create_table :users do
      primary_key :id
      String :handler
      String :email
      String :encrypted_password
    end
  end
end
