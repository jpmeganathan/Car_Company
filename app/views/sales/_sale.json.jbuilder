json.extract! sale, :id, :invoice_id, :invoice_number, :date_of_sale, :car_id, :customer_id, :sales_person_id, :created_at, :updated_at
json.url sale_url(sale, format: :json)
