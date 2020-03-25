class AnimalsController < ApplicationController
  def index
    animals = Animal.all
    render json: animals, include: [:favorites, :users, :location]
  end

  def show
    animal = Animal.find(params[:id])
    render json: animal, include: [:favorites, :users, :location]
  end
end
