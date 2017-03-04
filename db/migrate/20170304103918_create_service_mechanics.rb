class CreateServiceMechanics < ActiveRecord::Migration[5.0]
  def change
    create_table :service_mechanics do |t|
      t.integer :service_machanic_id
      t.integer :service_ticket_id
      t.integer :service_id
      t.integer :mechanic_id
      t.date :hours
      t.string :comments
      t.integer :rate

      t.timestamps
    end
  end
end
