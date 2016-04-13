Sequel.migration do 
  change do

    create_table :users do
      primary_key :id
      String :user_name, size: 255, null: false
      String :password_digest, size: 255
      Integer :department_id, null: false
      Integer :branch_id
      String :created_by, size: 255
      String :updated_by, size: 255
      String :first_name, size: 255, null: false
      String :last_name, size: 255
      Boolean :active, default: true
      String :email_address, size: 255
      DateTime :created_at
      DateTime :updated_at
    end

  end
end
