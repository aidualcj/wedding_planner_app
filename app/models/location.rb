class Location < ApplicationRecord
  belongs_to :event

  # Validation for location_type
  validates :location_type, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
