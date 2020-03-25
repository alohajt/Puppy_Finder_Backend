class User < ApplicationRecord
  belongs_to :location
  has_many :favorites
  has_many :animals, through: :favorites
  
end
