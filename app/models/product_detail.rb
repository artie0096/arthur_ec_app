class ProductDetail < ApplicationRecord
	has_many :product_images
  has_many :order_details
  belongs_to :product
end
