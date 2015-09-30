class ArquivoImagem < ActiveRecord::Base

  has_attached_file :arquivo,
                    :path => ":rails_root/public/images/:id/:filename",
                    :url  => "/images/:id/:filename"

  belongs_to :estabelecimento

end
