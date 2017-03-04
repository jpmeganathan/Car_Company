class CreatePartsUseds < ActiveRecord::Migration[5.0]
  def change
    create_table :parts_useds do |t|
      t.integer :parts_used_id
      t.integer :part_id
      t.integer :service_ticket_id
      t.integer :number_used
      t.float :price

      t.timestamps
    end
  end
end
