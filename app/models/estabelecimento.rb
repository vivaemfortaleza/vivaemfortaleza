class Estabelecimento < ActiveRecord::Base
  has_and_belongs_to_many :selos
  has_many :horario_estabelecimentos,  dependent: :destroy
  has_many :arquivo_imagems
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

  def anexos=(array)
    array.each do |file|
      arquivo_imagems.build(:arquivo => file)
    end
  end


end
