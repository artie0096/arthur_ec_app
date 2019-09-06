class CreateOrders < ActiveRecord::Migration[5.2]
	
  def change
    create_table :orders do |t|
      t.date :date
      t.string :delivery_name
      t.string :delivery_address
      t.integer :total_fee
      t.integer :user_id
      t.integer :delivery_id
      t.integer :pay_method_id

      t.timestamps
    end
  end
end
