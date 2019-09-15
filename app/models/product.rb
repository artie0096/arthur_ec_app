class Product < ApplicationRecord
    belongs_to :supplier
  has_many :product_details
  has_many :product_categories
  has_many :product_tags
  # has_many :tags, through: :product_tags
end