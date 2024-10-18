class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: :show
  def index
    # GET /restaurants
    @restaurants = Restaurant.all
  end

  def show
    # GET /restaurants/1
  end

  def new
    # GET /restaurants/new
    @restaurant = Restaurant.new
  end

  def edit
    # GET /restaurants/1/edit
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
