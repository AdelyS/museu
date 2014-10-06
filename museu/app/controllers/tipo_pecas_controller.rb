class TipoPecasController < InheritedResources::Base
 def build_resource_params
[params.fetch(:tipo_peca, {}).permit(:descricao)]
end
end

