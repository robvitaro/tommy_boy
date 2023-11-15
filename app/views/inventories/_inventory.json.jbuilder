json.extract! inventory, :id, :name, :description, :price, :quantity, :company_id, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
