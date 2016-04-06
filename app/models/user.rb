class User < Sequel::Model
  plugin :secure_password
  many_to_one :department
  many_to_one :branch
  
end
