json.array!(@autores) do |autor|
  json.extract! autor, :id, :nome, :nacionalidade, :resumoBiografia
  json.url autor_url(autor, format: :json)
end
