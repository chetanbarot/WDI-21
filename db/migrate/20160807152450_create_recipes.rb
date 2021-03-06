class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.text :content
      t.text :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
