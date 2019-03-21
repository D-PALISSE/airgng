class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :goats
  has_many :bookings

  has_many :requests, through: :goats, source: :bookings

  after_create :set_default_avatar

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :first_name, :last_name, :description
  validates_uniqueness_of :email

  mount_uploader :avatar, PhotoUploader

  private

  def set_default_avatar
    update(avatar: File.open(Rails.root.join('app/assets/images/default-avatar.png')))
  end
end
