class AddServingSizeAndCategoryToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :serving_size, :integer
    add_column :recipes, :category, :string
  end
end
