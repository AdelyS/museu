json.array!(@exposicoes) do |exposicao|
  json.extract! exposicao, :id, :nome, :paisOrigem
  json.url exposicao_url(exposicao, format: :json)
end
