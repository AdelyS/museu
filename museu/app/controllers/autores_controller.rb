class AutoresController < InheritedResources::Base
 def build_resource_params
[params.fetch(:autor, {}).permit(:nome, :nacionalidade, :resumoBiografia)]
end
end
