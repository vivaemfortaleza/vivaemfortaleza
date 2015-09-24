class ArquivoImagem < ActiveRecord::Base

  has_attached_file :arquivo,
                    styles: { medium: "300x300>", thumb: "100x100>" }


end
