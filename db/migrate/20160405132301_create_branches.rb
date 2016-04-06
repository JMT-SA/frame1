Sequel.migration do 
  change do

    create_table :branches do
      primary_key :id
      String :branch_name, :null => false
      Time :created_at
      Time :updated_at
    end

  end
end
