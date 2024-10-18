class ReviewsController < ApplicationController
  def index
    # GET /reviews
    @reviews = Review.all
  end
end
