json.array!(@cars) do |car|
  json.extract! car, :id, :brand, :model, :kind, :price, :photo
  json.url car_url(car, format: :json)
end
