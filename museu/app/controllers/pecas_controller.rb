class PecasController < InheritedResources::Base
def build_resource_params
[params.fetch(:peca, {}).permit(:nome,:ano,:descricao,:exposicao_id,:autor_id,:tipoPeca_id, :periodoLiterario_id)]
end
end
