class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.text :bio
      t.string :species
      t.string :breed
      t.boolean :gwcats
      t.boolean :gwkids
      t.boolean :gwdogs
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
