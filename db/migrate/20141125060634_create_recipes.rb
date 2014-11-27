class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :photo
      t.text :ingredients
      t.string :cooking_time
      t.integer :user_id

      t.timestamps
    end
  end
end
