class Recipe < ActiveRecord::Base

  has_many :ingredients

  include PgSearch
  pg_search_scope :mysearch,
                  :against => [:name, :category, :cuisine],
                  using: {
                    tsearch: {dictionary: "english"}
                  }

  mount_uploader :photo, RecipePhotoUploader
end
