class Animal < ApplicationRecord
  belongs_to :location
  # belongs_to :user, optional:true
  has_many :users, through: :favorites

  # def favorites
  #   favorites = Favorite.all.find(&:animal_id == self.id)

  # end

  # def favorite_users
  #   user_ids = favorites.map(&:id)
  #   puts user_ids
  #   users_who_favorited_this_animal = User.all.select(&:id == user_ids)

  # end

end
