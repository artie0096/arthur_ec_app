class ProductImage < ApplicationRecord
 belongs_to :product_detail

 # mount_uploader :product_image, ProductImageUploader
end
