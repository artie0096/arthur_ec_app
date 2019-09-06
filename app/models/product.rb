class Product < ApplicationRecord
	belongs_to :supplier
  has_many :product_details
  has_many :product_categories
  has_many :product_tags
end
