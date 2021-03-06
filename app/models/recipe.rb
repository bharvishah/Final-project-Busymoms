class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients, :allow_destroy => true
  include PgSearch
  validates :name, presence: true
  validates :method, presence: true
  validates :cuisine, presence: true
  validates :category, presence: true
  validates :photo, presence: true


  pg_search_scope :mysearch,
                  :against => [:name, :category, :cuisine],
                  using: {
                    tsearch: {dictionary: "english"}
                  }

  mount_uploader :photo, RecipePhotoUploader
end
