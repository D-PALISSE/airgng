class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :goat

  validates_presence_of :beginning_date, :end_date
end
