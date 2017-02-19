class CreateGraduates < ActiveRecord::Migration[5.0]
  def change
    create_table :graduates do |t|
      t.string :cedula
      t.string :nombre
      t.string :apellido
      t.string :sexo
      t.string :carrera
      t.string :telefono
      t.string :direccion
      t.date :fecha_nacimiento
      t.date :fecha_egreso

      t.timestamps
    end
  end
end
