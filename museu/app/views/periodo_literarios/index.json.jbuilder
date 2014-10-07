json.array!(@periodo_literarios) do |periodo_literario|
  json.extract! periodo_literario, :id, :nome, :anoInicio, :anoFim, :descricao
  json.url periodo_literario_url(periodo_literario, format: :json)
end
