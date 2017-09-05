class CreateJoinTableMensajeContacto < ActiveRecord::Migration[5.1]
  def change
    create_join_table :mensajes, :contactos do |t|
      # t.index [:mensaje_id, :contacto_id]
      # t.index [:contacto_id, :mensaje_id]
    end
  end
end
