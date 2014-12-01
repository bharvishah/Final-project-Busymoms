class AddCuisineToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :cuisine, :string
  end
end
