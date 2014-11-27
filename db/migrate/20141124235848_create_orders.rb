class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :store
      t.text :items
      t.boolean :allow_sub
      t.string :delivery_window
      t.text :add_note
      t.integer :user_id

      t.timestamps
    end
  end
end
