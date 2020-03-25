class UsersController < ApplicationController
  
  def index
    users = User.all
    render json: users, include: [:animals, :favorites, :location]
  end

  def show
    user = User.find(params[:id])
    render json: user, include: [:animals, :favorites, :location]
  end

end
