class CarsController < ApplicationController
    before_action :authenticate_admin!, except: [:index, :show]

    def index

        if current_user

    		@cars = Car.where(user_id: current_user.id)
            p '*' * 20
            p @cars
            sort_attribute = params[:sort]
            order_attribute = params[:order]
            price = params[:price]
            p '*' * 20
            p sort_attribute
            p order_attribute
            if order_attribute
                p "order desc"
                @cars = Car.order(year: :desc)
            elsif sort_attribute
                @cars = Car.order(sort_attribute)
            else
                Car.order(year: :desc)
            # if price.where("price" < 200)
            #    p price 
            end

            render 'index.html.erb'
        else 
            redirect_to "/login"
        end
    end 

    def new 
        @car = Car.new
        unless current_user && current_user.admin
            redirect_to '/' 
        end        
    end

    def create 
        @car = Car.new(

            color: params["color"],
            year: params["year"],
            manufacture: params["manufacture"],
            price: params["price"],
            image: params["image"],
            name: params["name"],
            user_id: current_user.id
            )

        unless current_user && current_user.admin
            redirect_to '/'
        end 

        if @car.save
            flash[:success] = "Recipe created successufully "
            redirect_to "/cars/#{@car.id}"
        else 
            render :new 
        end 

    end

    def show 
        @car = Car.find(params[:id])
    end

    def edit 
        @car = Car.find(params[:id])

        unless current_user && current_user.admin
            redirect_to '/'
        end

    end

    def update 
        @car = Car.find(params[:id])

        @car.color = params["color"]
        @car.year = params["year"]
        @car.manufacture = params["manufacture"]
        @car.price = params["price"]
        @car.image = params["image"]
        @car.name = params["name"]

     
        unless current_user && current_user.admin
            redirect_to '/'
        end

        if @car.save
            flash[:success] = "Car updated"
            redirect_to  "/cars/#{@car.id}"

        else 
         render :edit
        end 

    end

    def destroy
        @car = Cars.find(params[:id])
        @car.destroy


        flash[:success] = "Destroyed"
        redirect_to "/cars"

        unless current_user && current_user.admin
            redirect_to '/'
        end

    end

end











