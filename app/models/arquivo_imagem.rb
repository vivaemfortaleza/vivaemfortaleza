class ArquivoImagem < ActiveRecord::Base

  has_attached_file :arquivo,
                    :styles => { medium: "300x300>", thumb: "100x100>" },
                    :url => ":rails_root/estabelecimentos/:id/:style/:filename  "

  belongs_to :estabelecimento

end
