class FixEstabelecimentoSelosRelation < ActiveRecord::Migration
  def change
    rename_column :estabelecimentos_selos, :estacionamento_id, :estabelecimento_id
  end
end
