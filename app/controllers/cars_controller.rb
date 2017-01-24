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
            manufacture: params["manufacture"],
            price: params["price"],
            image: params["image"],
            name: params["name"]
            
            )

        @car.save

        flash[:success] = "Recipe created successufully "
        redirect_to "/cars/#{@car.id}"
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
        @car.year = params["year"]
        @car.manufacture = params["manufacture"]
        @car.price = params["price"]
        @car.image = params["image"]
        @car.name = params["name"]

        @car.save

        flash[:success] = "Recipe updated"
        redirect_to  "/cars/#{@car.id}"
    end

    def destroy
        @car = Cars.find(params[:id])
        @car.destroy


        flash[:success] = "Destroyed"
        redirect_to "/cars"
    end


end











