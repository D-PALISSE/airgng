class Goat < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :user_id
  has_many :bookings

  validates_presence_of :name, :photo, :specie, :description, :address, :daily_price
end
