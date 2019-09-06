json.extract! delivery, :id, :method, :name, :phone_number, :fee, :created_at, :updated_at
json.url delivery_url(delivery, format: :json)
