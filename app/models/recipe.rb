class Recipe < ActiveRecord::Base

  has_many :ingredients
  accepts_nested_attributes_for :ingredients, :allow_destroy => true

  include PgSearch
  pg_search_scope :mysearch,
                  :against => [:name, :category, :cuisine],
                  using: {
                    tsearch: {dictionary: "english"}
                  }

  mount_uploader :photo, RecipePhotoUploader
end
