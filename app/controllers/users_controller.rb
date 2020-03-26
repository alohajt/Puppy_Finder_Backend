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

end
