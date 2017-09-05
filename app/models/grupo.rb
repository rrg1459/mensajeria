class Grupo < ApplicationRecord
	has_and_belongs_to_many :contactos
	has_and_belongs_to_many :mensajes
end
