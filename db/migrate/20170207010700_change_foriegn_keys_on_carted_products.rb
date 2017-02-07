class ChangeForiegnKeysOnCartedProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :carted_products, :user_id, :string
    remove_column :carted_products, :order_id, :string
    remove_column :carted_products, :car_id, :string

    add_column :carted_products, :user_id, :integer
    add_column :carted_products, :order_id, :integer
    add_column :carted_products, :car_id, :integer
  end
end
