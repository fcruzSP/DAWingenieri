json.array!(@autos) do |auto|
  json.extract! auto, :id, :modelo, :marca, :ano, :precio, :agencia
  json.url auto_url(auto, format: :json)
end
