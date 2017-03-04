json.extract! service_ticket, :id, :service_ticket_id, :service_ticket_number, :car_id, :customer_id, :date_received, :comments, :date_return_to_cutomer, :created_at, :updated_at
json.url service_ticket_url(service_ticket, format: :json)
