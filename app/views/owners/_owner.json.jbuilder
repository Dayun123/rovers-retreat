json.extract! owner, :id, :first_name, :last_name, :phone, :address, :city, :state, :zip, :emergency_name, :emergency_phone, :created_at, :updated_at
json.url owner_url(owner, format: :json)
