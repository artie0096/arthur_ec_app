class AddProductImageToProductDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :product_details, :product_image, :string
  end
end
