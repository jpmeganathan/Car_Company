json.extract! sale_person, :id, :sales_person_id, :first_name, :last_name, :address, :phone_number, :created_at, :updated_at
json.url sale_person_url(sale_person, format: :json)
