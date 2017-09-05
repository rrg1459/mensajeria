json.extract! contacto, :id, :nombre, :numero, :archivo, :created_at, :updated_at
json.url contacto_url(contacto, format: :json)
