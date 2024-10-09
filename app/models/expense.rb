class Expense < ApplicationRecord
  belongs_to :event
  belongs_to :category
  validates :category_id, presence: true

  # Validations
  validates :description, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
