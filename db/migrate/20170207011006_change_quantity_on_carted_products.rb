class ChangeQuantityOnCartedProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :carted_products, :quantity, :string
    add_column :carted_products, :quantity, :integer
  end
end
