

class User < ActiveRecord::Base
  has_many :orders, through: :carted_products

  has_many :cars

  has_many :carted_products

  has_secure_password
end
