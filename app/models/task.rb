class Task < ApplicationRecord
  belongs_to :event
  belongs_to :category, optional: true
  belongs_to :assigned_to, class_name: 'Guest', optional: true
end
