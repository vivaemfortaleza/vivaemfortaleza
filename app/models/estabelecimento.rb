class Estabelecimento < ActiveRecord::Base
  has_and_belongs_to_many :selos
  has_many :horario_estabelecimentos,  dependent: :destroy
  has_many :arquivo_imagems, dependent: :destroy
  has_one :logotipo, class_name: "ArquivoImagem"
  has_one :capa, class_name: "ArquivoImagem"


  accepts_nested_attributes_for :horario_estabelecimentos,:selos, allow_destroy: true

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
