class Animal < ApplicationRecord
  belongs_to :location

  # belongs_to :owner, optional:true, class_name: "User"

  has_many :favorites 
  has_many :users, through: :favorites
end
