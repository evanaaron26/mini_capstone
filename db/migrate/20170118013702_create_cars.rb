class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :color
      t.string :year
      t.string :manufacture

      t.timestamps
    end
  end
end
