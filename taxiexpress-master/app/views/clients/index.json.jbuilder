json.array!(@clients) do |client|
  json.extract! client, :id, :Nombre, :Apellido, :DNI, :Telefono, :Direccion, :Correo, :Usuario, :Contrasenia
  json.url client_url(client, format: :json)
end
