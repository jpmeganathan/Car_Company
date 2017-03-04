class CreateServiceTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :service_tickets do |t|
      t.integer :service_ticket_id
      t.integer :service_ticket_number
      t.integer :car_id
      t.integer :customer_id
      t.date :date_received
      t.string :comments
      t.date :date_return_to_cutomer

      t.timestamps
    end
  end
end
