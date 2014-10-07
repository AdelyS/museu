json.array!(@museu_locais) do |museu_local|
  json.extract! museu_local, :id, :nome, :endereco, :horario
  json.url museu_local_url(museu_local, format: :json)
end
