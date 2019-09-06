json.extract! order, :id, :date, :delivery_name, :delivery_address, :total_fee, :created_at, :updated_at
json.url order_url(order, format: :json)
