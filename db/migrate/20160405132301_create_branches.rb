Sequel.migration do 
  change do

    create_table :branches do
      primary_key :id
      String :branch_name, size: 255, :null => false # size: 255 (to get varchar instead of text....
      DateTime :created_at
      DateTime :updated_at
    end

  end
end
