class Alibye < ApplicationRecord
  CATEGORIES = %w[Work Family Relationships Murder Fraud Other Insurance].sort
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :title, :description, :price_per_hour, presence: true
  validates :description, length: { minimum: 6 }
  validates :category, inclusion: {
    in: CATEGORIES,
    message: "%{value} is not a valid size"
  }, allow_nil: true
  include PgSearch::Model
  pg_search_scope :search_by_title_and_description, against: %i[title description], using: {
    tsearch: { prefix: true }
  }
end
