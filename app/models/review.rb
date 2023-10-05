class Review < ApplicationRecord
  belongs_to :shop

  validates :rate, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  validates :comment, length: { maximum: 1500 }
  validates :frequent_solo_visitors, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5, allow_blank: true }
  validates :easy_to_order, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5, allow_blank: true }
  validates :delivery_speed, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5, allow_blank: true }
  validates :calmness, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5, allow_blank: true }
end
