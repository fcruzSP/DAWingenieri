json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :nam_recipes, :ingredients, :preparation, :preparation_time, :photo, :state, :description
  json.url recipe_url(recipe, format: :json)
end
