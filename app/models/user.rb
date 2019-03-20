class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :goats
  has_many :bookings

  has_many :requests, through: :goats, source: :bookings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :first_name, :last_name, :description, :avatar
  validates_uniqueness_of :email

  mount_uploader :avatar, PhotoUploader
end
