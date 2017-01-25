class AddInStock < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :in_stock, :string
  end
end


