class Review < ApplicationRecord
  belongs_to :restaurant
  rates = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: rates }, numericality: true
  # validates :points, numericality: true
  validates :content, presence: true
end
