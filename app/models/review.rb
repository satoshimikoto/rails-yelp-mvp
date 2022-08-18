class Review < ApplicationRecord
  RATING = [0, 1, 2, 3, 4, 5]

  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: RATING }
  validates :rating, numericality: { only_integer: true }
end
