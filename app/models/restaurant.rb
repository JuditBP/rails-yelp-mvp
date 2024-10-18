class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  #  ^ if I delete a restaurant it will also delete its reviews
  validates :name, :address, presence: true
  # ^ a restaurant must have a name, an address and a category
  validates :category, presence: true, inclusion: {
    in: %w[chinese italian japanese french belgian], message: 'The category must be one of the following: chinese, italian, japanese, french, belgian.'
  }
end
