class CreateSalePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :sale_people do |t|
      t.integer :sales_person_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end
