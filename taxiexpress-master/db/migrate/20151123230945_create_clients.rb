class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :Nombre
      t.string :Apellido
      t.string :DNI
      t.string :Telefono
      t.text :Direccion
      t.string :Correo
      t.string :Usuario
      t.string :Contrasenia

      t.timestamps null: false
    end
  end
end
