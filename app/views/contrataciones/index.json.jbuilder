json.array!(@contrataciones) do |contratacione|
  json.extract! contratacione, :id, :evento, :lugar, :fecha
  json.url contratacione_url(contratacione, format: :json)
end
