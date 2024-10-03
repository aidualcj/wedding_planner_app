json.extract! location, :id, :location_type, :capacity, :notes, :event_id, :created_at, :updated_at
json.url location_url(location, format: :json)
