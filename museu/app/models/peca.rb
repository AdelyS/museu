class Peca < ActiveRecord::Base
  belongs_to :exposicao
  belongs_to :autor
  belongs_to :tipoPeca
  belongs_to :periodoLiterario
end
