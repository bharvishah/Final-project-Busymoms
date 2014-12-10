class Order < ActiveRecord::Base
  belongs_to :user
  has_many :items
  accepts_nested_attributes_for :items, :allow_destroy => true
  validates :store, presence: true
  validates :delivery_window, presence: true
  validates :delivery_date, presence: true
  validates :address_line1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :phone, presence: true
  validates :zip, presence: true

end
