class CarsController < ApplicationController
	def cars
		@cars = Car.all 
	end 

    def getit 
        
    end

    def useit 
        @car = Car.new(

            color: params["color"],
            year: params["year"],
            year: params["manufacture"],
            price: params["price"],
            image: params["image"],
            color: params["color"],
            name: params["name"]
            
            )

        @car.save

        render cars.html.erb
    end
end


