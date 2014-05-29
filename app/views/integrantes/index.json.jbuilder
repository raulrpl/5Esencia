json.array!(@integrantes) do |integrante|
  json.extract! integrante, :id, :nombre, :email, :instrumento
  json.url integrante_url(integrante, format: :json)
end
