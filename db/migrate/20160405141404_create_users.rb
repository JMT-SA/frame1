Sequel.migration do 
  change do

    create_table :users do
      primary_key :id
      String :user_name, null: false
      String :password_digest
      Integer :department_id, null: false
      Integer :branch_id
      String :created_by
      String :updated_by
      String :first_name, null: false
      String :last_name
      Boolean :active, default: true
      String :email_address
      DateTime :created_at
      DateTime :updated_at
    end

  end
end
