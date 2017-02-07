class CartedProduct < ApplicationRecord
    belongs_to :car
    belongs_to :order, optional: true 
    belongs_to :user
end
