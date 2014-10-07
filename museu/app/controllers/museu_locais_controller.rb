class MuseuLocaisController < InheritedResources::Base
 def build_resource_params
[params.fetch(:museu_local, {}).permit(:nome, :endereco, :horario)]
end
end
