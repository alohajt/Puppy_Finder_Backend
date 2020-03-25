class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render json: @animals, include: :users
  end

  def show
    @animal = Animal.find(params[:id])
    render json: @animal, include: :users
  end

  def create
    
  end

end
