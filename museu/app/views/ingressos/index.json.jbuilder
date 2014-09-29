json.array!(@ingressos) do |ingresso|
  json.extract! ingresso, :id, :tipo
  json.url ingresso_url(ingresso, format: :json)
end
