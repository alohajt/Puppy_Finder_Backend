class UsersController < ApplicationController
  
  def index
    users = User.all
    render json: users, include: [:animals, :favorites, :location]
  end

  def show
    user = User.find(params[:id])
    render json: user, include: [:animals, :favorites, :location]
  end

  def create
    User.create(username:params[:username], password:params[:password], location_id:params[:location_id])
    redirect_to 'http://localhost:3001/'  
  end
  
  def locatelocation
      user = User.find_by(username: params[:username])
      render json: user.location, include: [:animals,:users]
  end
  
  def changeUserName
    user = User.find_by(username: params[:currentUsername])
    user.update(username:params[:username])
    redirect_to 'http://localhost:3001/'
  end
  def changeUserPassword
    user = User.find_by(username: params[:currentUsername])
    user.update(password:params[:password])
    redirect_to 'http://localhost:3001/'
  end
  def changeUserLocation
    user = User.find_by(username: params[:currentUsername])
    user.update(location_id:params[:location_id])
    redirect_to 'http://localhost:3001/'
  end

  def favoriteAnimals

    user = User.find_by(username: params[:username])
    render json: user.favorites, include: [:animal,:user]
  end


end
