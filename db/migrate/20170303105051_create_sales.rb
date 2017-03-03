class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.integer :invoice_id
      t.string :invoice_number
      t.datetime :date_of_sale
      t.integer :car_id
      t.integer :customer_id
      t.integer :sales_person_id

      t.timestamps
    end
  end
end
