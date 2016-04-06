json.array!(@users) do |user|
  json.extract! user, :id, :user_name, :hashed_password, :department_id, :branch_id, :created_by, :updated_by, :first_name, :last_name, :active, :email_address
  json.url user_url(user, format: :json)
end
