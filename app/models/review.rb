class Review < ApplicationRecord
  RATINGS = (0..5).to_a
  belongs_to :bartender
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: RATINGS,
    message: "%{value} should be a number comprised between 0 and 5" }
end
