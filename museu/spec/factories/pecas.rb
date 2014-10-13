# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :peca do
    nome "MyString"
    ano 1
    descricao "MyString"
    exposicao nil
    autor nil
    tipoPeca nil
    periodoLiterario nil
  end
end
