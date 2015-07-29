class Estabelecimento < ActiveRecord::Base
  has_and_belongs_to_many :selos
  has_many :horarios
end
