class AddAddressAndPhoneToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :address, :text
    add_column :orders, :phone, :string
  end
end
