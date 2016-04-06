Sequel.migration do 
  change do

    create_table :departments do
      primary_key :id
      String :department_name, null: false
      DateTime :created_at
      DateTime :updated_at
    end

  end
end
