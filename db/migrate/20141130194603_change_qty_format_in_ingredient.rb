class ChangeQtyFormatInIngredient < ActiveRecord::Migration
  def change
    change_column :ingredients, :qty, :string
  end
end
