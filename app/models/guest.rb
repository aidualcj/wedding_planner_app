class Guest < ApplicationRecord
  belongs_to :event
  has_many :tasks, dependent: :destroy  # Si un invité peut avoir des tâches
end
