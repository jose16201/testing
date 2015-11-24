class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :Nombre
      t.string :Apellido
      t.string :DNI
      t.text :Direccion
      t.string :Telefono
      t.references :car, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
