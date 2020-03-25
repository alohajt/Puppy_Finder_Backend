class AddUserToAnimal < ActiveRecord::Migration[6.0]
  def change
    add_reference :animals, :user, foreign_key: true
  end
end
