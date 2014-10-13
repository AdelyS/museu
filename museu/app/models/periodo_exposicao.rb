class PeriodoExposicao < ActiveRecord::Base
  belongs_to :museuLocal
  belongs_to :exposicao
end
