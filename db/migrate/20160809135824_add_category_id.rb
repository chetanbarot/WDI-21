class AddCategoryId < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :category_id, :integer
  end
end
