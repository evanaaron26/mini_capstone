class OrdersController < ApplicationController

    def new 

    end 

    def create 
      @order = Order.new(user_id: session[:user_id], quantity: params[:quantity], product_id: params[:product_id], subtotal: Product.find(:product_id).price
      @order.save
      redirect_to "/orders/#{@order.id}"
    end 

    def show  
      @order = Order.find(params[:id])
    end 
end
