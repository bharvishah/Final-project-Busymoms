class Order < ActiveRecord::Base
  belongs_to :user
  has_many :items
  accepts_nested_attributes_for :items
  validates :store, presence: true
  validates :allow_sub, presence: true
  validates :delivery_window, presence: true
  validates :delivery_date, presence: true
  validates :address, presence: true
  validates :phone, presence: true

  
end
