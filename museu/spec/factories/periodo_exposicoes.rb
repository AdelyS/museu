# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :periodo_exposicao do
    data_inicio "2014-10-13"
    data_fim "2014-10-13"
    museuLocal nil
    exposicao nil
  end
end
