json.extract! mensaje, :id, :texto, :contactos, :created_at, :updated_at
json.url mensaje_url(mensaje, format: :json)
