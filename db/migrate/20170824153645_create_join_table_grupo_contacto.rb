class CreateJoinTableGrupoContacto < ActiveRecord::Migration[5.1]
  def change
    create_join_table :grupos, :contactos do |t|
      # t.index [:grupo_id, :contacto_id]
      # t.index [:contacto_id, :grupo_id]
    end
  end
end
