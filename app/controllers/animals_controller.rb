class AnimalsController < ApplicationController
  def index
    animals = Animal.all
    render json: animals, include: [:favorites, :users, :location]
  end

  def show
    
  end
end
