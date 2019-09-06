class CreatePayMethods < ActiveRecord::Migration[5.2]

  def change
    create_table :pay_methods do |t|
      t.string :method
      t.string :name
      t.integer :phone_number
      t.integer :fee

      t.timestamps
    end
  end
end
