class RemoveItemsFromOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :items, :text
  end
end
