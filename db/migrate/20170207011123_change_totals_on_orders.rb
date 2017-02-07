class ChangeTotalsOnOrders < ActiveRecord::Migration[5.0]
  def change
    #subtotal, tax, total
    remove_column :orders, :subtotal, :string
    remove_column :orders, :tax, :string
    remove_column :orders, :total, :string

    add_column :orders, :subtotal, :integer
    add_column :orders, :tax, :integer
    add_column :orders, :total, :integer 
  end
end
