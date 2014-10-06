json.array!(@tipo_pecas) do |tipo_peca|
  json.extract! tipo_peca, :id, :descricao
  json.url tipo_peca_url(tipo_peca, format: :json)
end
