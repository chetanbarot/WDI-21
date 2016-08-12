class Recipe < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_and_belongs_to_many :categories

  mount_uploaders :images, RecipeImageUploader

  def ingredient_list
    ingredients.split(', ')
  end

  def method_list
    method.split('. ').map {|m| m << '.' if m.last != '.' }
  end

end
