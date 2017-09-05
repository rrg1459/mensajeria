class Mensaje < ApplicationRecord
	has_and_belongs_to_many :grupos
  has_and_belongs_to_many :contactos

  after_create   :actualizar_mensaje
  after_update   :actualizar_mensaje

end


private
  def actualizar_mensaje
      contador = 0 
      vector = []
    gm = GruposMensaje.where(mensaje_id: self.id)
    gm.each do |gml|
      grp = Grupo.find(gml.grupo_id)
      cg = ContactosGrupo.where(grupo_id: grp.id) 
      cg.each do |cgl|
        contacto = Contacto.find(cgl.contacto_id)
        puts 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
        puts "Id mensaje: #{self.id}, ID contacto: #{contacto.id}"
        puts "Nombre grupo: #{grp.nombre}, contacto: #{contacto.nombre}"
        puts 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
         vector[contador] = contacto.id
         contador += 1
      end
    end
    vector = vector.uniq
    cant = vector.length
    puts cant
    puts vector.inspect
    mensaje = Mensaje.find(self.id)
    mensaje.update_columns(cantidad_contactos: cant)
  end

