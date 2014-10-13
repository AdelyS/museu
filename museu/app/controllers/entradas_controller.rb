class EntradasController < InheritedResources::Base
def build_resource_params
[params.fetch(:entrada, {}).permit(:preco,:ingresso_id,:museuLocal_id)]
end
end
