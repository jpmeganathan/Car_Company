json.extract! service, :id, :service_id, :service_name, :hour_rate, :created_at, :updated_at
json.url service_url(service, format: :json)
