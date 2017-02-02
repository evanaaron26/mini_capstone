

class User < ActiveRecord::Base
  has_many :orders

  has_many :cars

  has_secure_password
end
