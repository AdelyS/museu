json.array!(@pecas) do |peca|
  json.extract! peca, :id, :nome, :ano, :descricao, :exposicao_id, :autor_id, :tipoPeca_id, :periodoLiterario_id
  json.url peca_url(peca, format: :json)
end
