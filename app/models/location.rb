class Location < ApplicationRecord
  has_many :animals
  has_many :users
end
