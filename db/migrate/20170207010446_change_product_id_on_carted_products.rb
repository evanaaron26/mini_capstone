class ChangeProductIdOnCartedProducts < ActiveRecord::Migration[5.0]
  def change
    rename_column :carted_products, :product_id, :car_id
  end
end
