class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.integer :service_id
      t.string :service_name
      t.float :hour_rate

      t.timestamps
    end
  end
end
