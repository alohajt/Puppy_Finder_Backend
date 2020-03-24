class User < ApplicationRecord
  belongs_to :location
  has_many :animals, through: :favorites
end
