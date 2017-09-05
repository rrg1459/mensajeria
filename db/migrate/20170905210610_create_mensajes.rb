class CreateMensajes < ActiveRecord::Migration[5.1]
  def change
    create_table :mensajes do |t|
      t.string :texto
      t.integer :cantidad_contactos,  default: 0
      

      t.timestamps
    end
  end
end
