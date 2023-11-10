json.extract! company, :id, :name, :address_street, :address_city, :address_state, :address_zip, :billing_address_street, :billing_address_city, :billing_address_state, :billing_address_zip, :contact_first_name, :contact_last_name, :phone, :email, :created_at, :updated_at
json.url company_url(company, format: :json)
