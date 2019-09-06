json.extract! product, :id, :product_name, :origin_country, :delivery_require_day, :created_at, :updated_at
json.url product_url(product, format: :json)
