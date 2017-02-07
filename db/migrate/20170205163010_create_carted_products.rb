class CreateCartedProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :carted_products do |t|
      t.string :user_id
      t.string :product_id
      t.string :quantity
      t.string :status

      t.timestamps
    end
  end
end
