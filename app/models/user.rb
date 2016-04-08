class User < Sequel::Model
  plugin :secure_password
  many_to_one :department
  many_to_one :branch
  
  def full_name
    "#{first_name} #{last_name}"
  end
end
