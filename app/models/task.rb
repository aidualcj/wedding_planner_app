class Task < ApplicationRecord
  belongs_to :event
  belongs_to :guest, optional: true
  belongs_to :category, optional: true
end
