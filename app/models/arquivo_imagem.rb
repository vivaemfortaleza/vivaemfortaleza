class ArquivoImagem < ActiveRecord::Base

  belongs_to :estabelecimento
  has_attached_file :arquivo,
                    styles: { medium: "300x300>", thumb: "100x100>" }


end
