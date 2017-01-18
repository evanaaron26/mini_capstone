class CarsController < ApplicationController
	def cars
		@cars = Car.all 
	end 
end
