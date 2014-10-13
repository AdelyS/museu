json.array!(@entradas) do |entrada|
  json.extract! entrada, :id, :preco, :ingresso_id, :museuLocal_id
  json.url entrada_url(entrada, format: :json)
end
