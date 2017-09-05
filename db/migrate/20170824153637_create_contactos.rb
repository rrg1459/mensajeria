class CreateContactos < ActiveRecord::Migration[5.1]
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :numero
      t.string :archivo, default: "** cargado en linea **"

      t.timestamps
    end
  end
end
