class Task < ApplicationRecord
  belongs_to :event
  belongs_to :guest, optional: true
  belongs_to :category, optional: true

  # Validations
  validates :name, presence: true
  validates :due_date, presence: true
end
