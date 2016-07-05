json.array!(@plants) do |plant|
  json.extract! plant, :id, :name, :description, :image
  json.url plant_url(plant, format: :json)
end
