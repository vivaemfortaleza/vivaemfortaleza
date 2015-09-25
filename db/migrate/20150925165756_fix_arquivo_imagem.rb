class FixArquivoImagem < ActiveRecord::Migration
  def change
    remove_attachment :arquivo_imagems, :avatar
    add_attachment :arquivo_imagems, :arquivo
  end
end
