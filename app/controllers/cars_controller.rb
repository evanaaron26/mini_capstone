class CarsController < ApplicationController
	def index
		@cars = Car.all 
	end 

    def new 
        
    end

    def create 
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
    end

    def show 
        @car = Car.find(params[:id])
    end

    def edit 
        @car = Car.find(params[:id])
    end

    def update 
        @car = Car.find(params[:id])

        @car.color = params["color"]
        @car.year = params["color"]
        @car.manufacture = params["color"]
        @car.price = params["color"]
        @car.image = params["color"]
        @car.color = params["color"]
        @car.name = params["color"]

        @car.save
    end

    def destroy
        @car = Cars.find(params[:id])
        @car.destroy
    end
end











