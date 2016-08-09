class AddImageArray < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :images, :string, array: true, default: []
  end
end
