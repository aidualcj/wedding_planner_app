class Guest < ApplicationRecord
  belongs_to :event
  has_many :tasks, dependent: :destroy
  belongs_to :primary_guest, class_name: 'Guest', optional: true
  has_many :associated_guests, class_name: 'Guest', foreign_key: 'primary_guest_id'

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :rsvp_status, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
