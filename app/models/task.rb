class Task < ApplicationRecord
  belongs_to :event
  belongs_to :category, optional: true
  belongs_to :assigned_to, class_name: 'Guest', foreign_key: 'guest_id', optional: true
end
