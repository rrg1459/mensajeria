class Contacto < ApplicationRecord
	has_and_belongs_to_many :grupos
	has_and_belongs_to_many :mensajes
end
