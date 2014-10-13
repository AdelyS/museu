class PeriodoExposicoesController < InheritedResources::Base
def build_resource_params
[params.fetch(:periodo_exposicao, {}).permit(:data_inicio,:data_fim,:exposicao_id,:museuLocal_id)]
end
end
