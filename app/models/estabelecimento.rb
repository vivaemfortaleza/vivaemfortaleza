class Estabelecimento < ActiveRecord::Base
  has_and_belongs_to_many :selos
  has_many :horario_estabelecimentos
  accepts_nested_attributes_for :horario_estabelecimentos

end
