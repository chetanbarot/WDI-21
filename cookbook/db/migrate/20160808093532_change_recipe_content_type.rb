class ChangeRecipeContentType < ActiveRecord::Migration[5.0]
  def change
   rename_column :recipes, :content, :title
     change_column :recipes, :title, :string
     add_column :recipes, :ingredients, :text
     add_column :recipes, :method, :text
     add_column :recipes, :time, :float
  end
end
