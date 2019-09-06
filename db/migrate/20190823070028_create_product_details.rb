class CreateProductDetails < ActiveRecord::Migration[5.2]
  
  def change
    create_table :product_details do |t|
      t.integer :color
      t.string :size
      t.numeric :weight
      t.integer :regular_price
      t.integer :selling_price
      t.integer :stock_quantity
      t.integer :product_id
      t.timestamps
    end
  end
end
