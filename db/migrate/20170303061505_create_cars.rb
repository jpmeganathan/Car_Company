class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.integer :car_id
      t.string :serial_no
      t.string :make
      t.string :model
      t.string :color
      t.datetime :year
      t.boolean :car_for_sale

      t.timestamps
    end
  end
end
