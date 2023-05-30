class User < ApplicationRecord
  has_many :alibyes
  has_many :booked_alibyes, through: :bookings, source: :alibyes
  has_many :bookings
  has_many :received_bookings, through: :alibyes, source: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end