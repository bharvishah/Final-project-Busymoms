class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :profile
  has_many :orders
  accepts_nested_attributes_for :profile
  before_create :build_user_profile

  def build_user_profile
    self.build_profile
  end

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

end
