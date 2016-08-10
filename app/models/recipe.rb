class Recipe < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_and_belongs_to_many :categories

  mount_uploaders :images, RecipeImageUploader

end
