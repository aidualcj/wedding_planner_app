class Guest < ApplicationRecord
  belongs_to :event
  has_many :tasks, dependent: :destroy

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
