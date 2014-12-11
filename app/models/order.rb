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
  validates :status, presence: true
  validates_inclusion_of :status, in: ["Order placed",
                          "Shopper assigned", "Shopping in progress",
                          "Out for delivery","Delivered"], :allow_nil => false

def status_enum
  [['Order placed'],['Shopper assigned'],['Shopping in progress'],['Out for delivery'],['Delivered']]
end

end
