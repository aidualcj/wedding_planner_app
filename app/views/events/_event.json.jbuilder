json.extract! event, :id, :name, :date, :event_type, :estimated_guests, :description, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
