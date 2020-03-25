class LocationsController < ApplicationController
  def index
    locations = Location.all
    render json: locations, include: [:animals, :users]
  end

  def show

    location = Location.find(params[:id])
    render json: location, include: [:animals, :users]
  end

end
