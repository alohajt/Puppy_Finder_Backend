class Animal < ApplicationRecord
  belongs_to :location

  # belongs_to :owner, optional:true, class_name: "User"

  # def favorites
  #   Favorite.all.select{|n|n.animal_id == self.id}
  # end
  
  # def favorite_users
  #     user_ids = favorites().map{|n|n.user_id}
  #     count=0
  #     User.all.reduce([]) do |acc , user|
  #       # byebug
  #       if user.id==user_ids[count]
  #         acc << user
  #       else
  #         acc=acc
  #       end
  #       count = count +1
  #     end
  # end


  has_many :favorites 
  has_many :users, through: :favorites
end
