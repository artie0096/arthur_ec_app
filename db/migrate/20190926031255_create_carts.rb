class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.integer :product_detail_id
      t.integer :order_quantity

      t.timestamps
    end
  end
end