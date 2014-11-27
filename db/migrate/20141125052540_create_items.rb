class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.integer :quantity
      t.integer :order_id

      t.timestamps
    end
  end
end
