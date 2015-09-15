class Estabelecimento < ActiveRecord::Base

  has_and_belongs_to_many :selos
  has_many :horario_estabelecimentos
  validates_presence_of :nome,
                        :endereco,
                        :numero,
                        :bairro,
                        :cidade,
                        :estado,
                        :email,
                        :site,
                        :fanpage,
                        :message => "não pode ser vazio"

end
