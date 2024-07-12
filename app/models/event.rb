class Event < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, :description, :location, :price, :capacity, :date, presence: true
end
