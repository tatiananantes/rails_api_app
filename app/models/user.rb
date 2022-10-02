class User < ApplicationRecord
  validates_presence_of :username, :email, :password_digest
  validates :email, uniqueness: true

  #encrypt password with bcrypt
  has_secure_password
end
