json.array!(@drivers) do |driver|
  json.extract! driver, :id, :Nombre, :Apellido, :DNI, :Direccion, :Telefono, :auto_id
  json.url driver_url(driver, format: :json)
end
