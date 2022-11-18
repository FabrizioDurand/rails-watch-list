class Review < ApplicationRecord
  belongs_to :list
  RATINGS = (0..5).to_a.freeze
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 0..5,
    message: '%{value} is not a valid review rating' }
  validates :rating, numericality: { only_integer: true }
end
