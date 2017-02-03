class AddCarId < ActiveRecord::Migration[5.0]
  def change
    add_column :category_cars, :car_id, :integer
  end
end
