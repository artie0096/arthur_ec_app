class CreateProducts < ActiveRecord::Migration[5.2]
  
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :origin_country
      t.integer :delivery_require_day
      t.integer :supplier_id

      t.timestamps
    end
  end
end
