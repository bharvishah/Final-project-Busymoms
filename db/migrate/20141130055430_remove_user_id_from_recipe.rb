class RemoveUserIdFromRecipe < ActiveRecord::Migration
  def change
    remove_column :recipes, :user_id, :integer
  end
end
