class AddAddressLine1AndAddressLine2ToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :address_line1, :string
    add_column :orders, :address_line2, :string
  end
end
