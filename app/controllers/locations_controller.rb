class LocationsController < ApplicationController
  def index
    locations = Location.all
    render json: locations, include: [:users, :animals]
  end

  def show
    location = Location.find(params[:id])
    render json: location, include: [:users, :animals]
  end

end
