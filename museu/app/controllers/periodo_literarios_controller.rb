class PeriodoLiterariosController < InheritedResources::Base
 def build_resource_params
[params.fetch(:periodo_literario, {}).permit(:nome, :anoInicio, :anoFim, :descricao)]
end
end
