class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show; end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.new(restaurant_params)
    restaurant.save

    # we don't need a restaurants/create.html.erb file!!
    redirect_to restaurant_path(restaurant)
  end

  def edit; end

  def update
    @restaurant.update(restaurant_params)

    # we don't need a restaurants/update.html.erb file!!
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params # <= STRONG PARAMS TO AVOID UGLY HACKERS THAT LIVE IN A CAVE
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
