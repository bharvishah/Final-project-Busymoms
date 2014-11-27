class AddMethodToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :method, :text
  end
end
