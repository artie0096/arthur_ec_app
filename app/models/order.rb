class Order < ApplicationRecord
	belongs_to :user
	belongs_to :pay_method
	belongs_to :delivery
	has_many :order_details
end
