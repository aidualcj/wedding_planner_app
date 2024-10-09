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
end
