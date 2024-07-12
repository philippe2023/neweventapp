class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :reviews

  validates :user_id, :event_id, presence: true
end