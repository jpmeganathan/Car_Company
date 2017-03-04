class CreateMechanics < ActiveRecord::Migration[5.0]
  def change
    create_table :mechanics do |t|
      t.integer :machanic_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :Phone_number

      t.timestamps
    end
  end
end
