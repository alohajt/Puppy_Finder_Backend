class AddPictureToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :picture, :string
    add_column :users, :picture, :string
  end
end
