class Event < ApplicationRecord
  belongs_to :user
  has_many :guests, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :expenses, dependent: :destroy
  has_many :locations, dependent: :destroy
  has_many :categories, dependent: :destroy

   # Validations
   validates :name, presence: true
   validates :date, presence: true
   validates :event_type, presence: true
   validates :user, presence: true
   validates :estimated_guests, presence: true, numericality: { greater_than: 0 }

   # Custom validation for date
   validate :date_cannot_be_in_the_past

   private

   def date_cannot_be_in_the_past
     if date.present? && date < Date.today
       errors.add(:date, "cannot be in the past")
     end
   end
end
