json.extract! guest, :id, :first_name, :last_name, :email, :phone_number, :group, :diet, :rsvp_status, :event_id, :primary_guest_id, :created_at, :updated_at
json.url guest_url(guest, format: :json)
