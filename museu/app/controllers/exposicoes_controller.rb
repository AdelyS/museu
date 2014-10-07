class ExposicoesController < InheritedResources::Base
 def build_resource_params
[params.fetch(:exposicao, {}).permit(:nome, :paisOrigem)]
end
end
