Sequel.migration do 
  change do

    create_table :departments do
      primary_key :id
      String :department_name, size: 255, null: false
      DateTime :created_at
      DateTime :updated_at
    end

  end
end
