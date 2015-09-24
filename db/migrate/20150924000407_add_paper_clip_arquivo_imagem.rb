class AddPaperClipArquivoImagem < ActiveRecord::Migration
  def change
    add_attachment :arquivo_imagems, :avatar
  end
end
