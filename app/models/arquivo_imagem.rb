class ArquivoImagem < ActiveRecord::Base

  has_attached_file :arquivo,
                    :styles => { medium: "300x300>", thumb: "100x100>" },
                    :path => ":rails_root/public/images/estabelecimento/:id/:filename"

  belongs_to :estabelecimento

end
