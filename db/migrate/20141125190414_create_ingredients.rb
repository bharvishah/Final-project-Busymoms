class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :qty
      t.string :measurement
      t.string :style

      t.timestamps
    end
  end
end
