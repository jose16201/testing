class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :Marca
      t.string :Modelo
      t.date :Anio
      t.string :Placa
 

      t.timestamps null: false
    end
  end
end
