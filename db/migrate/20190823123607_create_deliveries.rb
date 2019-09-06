class CreateDeliveries < ActiveRecord::Migration[5.2]
  
  def change
    create_table :deliveries do |t|
      t.string :method
      t.string :name
      t.integer :phone_number
      t.integer :fee

      t.timestamps
    end
  end
end
