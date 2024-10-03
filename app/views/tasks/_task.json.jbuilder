json.extract! task, :id, :name, :description, :due_date, :status, :assigned_to_name, :assigned_to_email, :event_id, :guest_id, :category_id, :created_at, :updated_at
json.url task_url(task, format: :json)
