json.array!(@cars) do |car|
  json.extract! car, :id, :Marca, :Modelo, :Anio, :Placa
  json.url car_url(car, format: :json)
end
