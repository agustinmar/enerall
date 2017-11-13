json.array!(@contenidos) do |contenido|
  json.extract! contenido, :id, :parent_id, :titulo, :texto
  json.url contenido_url(contenido, format: :json)
end
