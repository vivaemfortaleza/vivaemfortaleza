class FixEstabelecimentoArquivoRelation < ActiveRecord::Migration
  def change
    rename_column :arquivo_imagems, :estabelecimentos_id, :estabelecimento_id
  end
end
