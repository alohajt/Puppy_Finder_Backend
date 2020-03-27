class FavoritesController < ApplicationController
  def index
    favorites = Favorite.all
    render json: favorites, include: [:user, :animal]
  end

  def show
    favorite = Favorite.find(params[:id])
    render json: favorite, include: [:user,:animal]
  end
  
  def addToFavorites
      user=User.find_by(username:params[:currentUsername])
      Favorite.create(user:user,animal_id:params[:puppyID])
      
  end


  
end
