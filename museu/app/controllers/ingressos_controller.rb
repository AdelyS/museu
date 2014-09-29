class IngressosController < InheritedResources::Base
 def build_resource_params
[params.fetch(:ingresso, {}).permit(:tipo)]
end
end
