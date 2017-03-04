class CreateParts < ActiveRecord::Migration[5.0]
  def change
    create_table :parts do |t|
      t.integer :part_id
      t.integer :part_number
      t.string :description
      t.float :purchase_price
      t.float :retail_price

      t.timestamps
    end
  end
end
