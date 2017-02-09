

class User < ActiveRecord::Base
  has_many :orders, through: :carted_products
  has_many :cars
  has_many :carted_products
  has_secure_password

  validates :name, presence: true 
  validate :email, presence: true, length: { minimum: 2 }

end
