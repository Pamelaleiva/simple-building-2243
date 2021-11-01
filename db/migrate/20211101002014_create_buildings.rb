class CreateBuildings < ActiveRecord::Migration[6.1]
  def change
    create_table :buildings do |t|
      t.string :nombre_edificio
      t.string :calle
      t.string :numero
      t.string :comuna
      t.string :region
      t.string :codigo_postal

      t.timestamps
    end
  end
end
