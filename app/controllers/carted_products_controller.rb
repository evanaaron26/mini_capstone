class CartedProductsController < ApplicationController
    before_action :authenticate_user!
    
    def create
        carted_product = CartedProduct.new(
                 user_id: session[:user_id], 
                 quantity: params[:quantity], 
                 car_id: params[:car_id],
                 status: "carted"
                 ) 

        carted_product.save
        redirect_to "/carted_products"
    end 

    def index
        @carted_products = CartedProduct.where("user_id = ? AND status = ?", current_user.id.to_s, "carted")
    end

end
