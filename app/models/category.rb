class Category < ApplicationRecord
  belongs_to :event
  has_many :tasks
  has_many :expenses
end
