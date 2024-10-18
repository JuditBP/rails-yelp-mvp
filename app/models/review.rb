class Review < ApplicationRecord
  belongs_to :restaurant
  #  it makes necessary to have a content and a rating in the review to be fulfilled
  validates :content, :rating, presence: true
  # rating must be an integer. (a review with a rating of 2.5 should be invalid)
  validates :rating, numericality: { only_integer: true }
  # review rating must be a number between 0 and 5
  validates :rating, inclusion: { in: 0..5 }
end
