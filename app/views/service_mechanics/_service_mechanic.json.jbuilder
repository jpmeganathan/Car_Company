json.extract! service_mechanic, :id, :service_machanic_id, :service_ticket_id, :service_id, :mechanic_id, :hours, :comments, :rate, :created_at, :updated_at
json.url service_mechanic_url(service_mechanic, format: :json)
