json.extract! recipe, :id, :content, :image, :user_id, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)