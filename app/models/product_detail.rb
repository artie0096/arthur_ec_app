class ProductDetail < ApplicationRecord
mount_uploader :product_image, ProductImageUploader

  # has_many :product_images
  has_many :order_details
  belongs_to :product

end
