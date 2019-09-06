class CreateOrderDetails < ActiveRecord::Migration[5.2]
  
  def change
    create_table :order_details do |t|
      t.string :color
      t.string :size
      t.numeric :weight
      t.integer :regular_price
      t.integer :selling_price
      t.integer :stock_quantity
      t.integer :order_id
      t.integer :order_detail_id

      t.timestamps
    end
  end
end
