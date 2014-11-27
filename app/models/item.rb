class Item < ActiveRecord::Base
  belongs_to :order
  validates :description, presence: true
  validates :quantity, presence: true

end
