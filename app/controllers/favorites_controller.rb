class FavoritesController < ApplicationController
  def index
    favorites = Favorite.all
    render json: favorites, include: [:user, :animal]
  end

  def show
    favorite = Favorite.find(params[:id])
    render json: favorite, include: [:user, :animal]
  end

  def create

  end

end
