class Shop < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true, length: { maximum: 100 }
  validates :address, presence: true, length: { maximum: 300 }
  validates :latitude, numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }
  validates :longitude, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
end
