class Profile < ActiveRecord::Base
  belongs_to :user
  validates_inclusion_of :zip, in: ["77001","77002","77003","77004","77005","77006","77007"], :allow_blank => true
end
