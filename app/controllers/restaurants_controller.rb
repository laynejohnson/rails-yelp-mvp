class RestaurantsController < ApplicationController
  # see the list of all restaurants
  # Add a new restaurant > show
  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  # A visitor can add a new review to a restaurant

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
  end

  def create
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
