Sequel.migration do
  change do
    create_table(:branches) do
      primary_key :id
      column :branch_name, "text", :null=>false
      column :created_at, "timestamp without time zone"
      column :updated_at, "timestamp without time zone"
    end
    
    create_table(:departments) do
      primary_key :id
      column :department_name, "text", :null=>false
      column :created_at, "timestamp without time zone"
      column :updated_at, "timestamp without time zone"
    end
    
    create_table(:schema_migrations) do
      column :filename, "text", :null=>false
      
      primary_key [:filename]
    end
    
    create_table(:users) do
      primary_key :id
      column :user_name, "text", :null=>false
      column :password_digest, "text"
      column :department_id, "integer", :null=>false
      column :branch_id, "integer"
      column :created_by, "text"
      column :updated_by, "text"
      column :first_name, "text", :null=>false
      column :last_name, "text"
      column :active, "boolean", :default=>true
      column :email_address, "text"
      column :created_at, "timestamp without time zone"
      column :updated_at, "timestamp without time zone"
    end
  end
end
              Sequel.migration do
                change do
                  self << "SET search_path TO \"$user\", public"
                  self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20160405132301_create_branches.rb')"
self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20160405135527_create_departments.rb')"
self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20160405141404_create_users.rb')"
                end
              end
