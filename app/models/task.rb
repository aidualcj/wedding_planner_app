class Task < ApplicationRecord
  belongs_to :event
  belongs_to :guest
  belongs_to :category
end
