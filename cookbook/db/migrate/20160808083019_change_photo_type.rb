class ChangePhotoType < ActiveRecord::Migration[5.0]
  def change
    change_column :recipes, :image, :string
  end
end
