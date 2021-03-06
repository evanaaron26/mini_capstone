class Car < ApplicationRecord
    #association method
    belongs_to :user
    has_many :category_cars
    has_many :categories, through: :category_cars
    has_many :orders, through: :users

    validates :name, presence: true 
    validates :price, presence: true 
    validates :description, presence: true    

    def friendly_updated_at
     updated_at.strftime('%b %e, %Y')
    end

    def long_name
        new_name = "#{year} #{manufacture} #{price}"
        new_name
    end 

    def sale_message
        if price.to_i > 2
            return "Discount Item!"
        else 
            return "Everyday Value!!"
        end
    end

    def tax
        price.to_i * 1.09
    end


end

    




