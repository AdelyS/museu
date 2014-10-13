json.array!(@periodo_exposicoes) do |periodo_exposicao|
  json.extract! periodo_exposicao, :id, :data_inicio, :data_fim, :museuLocal_id, :exposicao_id
  json.url periodo_exposicao_url(periodo_exposicao, format: :json)
end
