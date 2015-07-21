class AdicionarInformacaoExtraEstabelecimento < ActiveRecord::Migration

  def change
    change_table :estabelecimentos do |t|
      t.belongs_to :selos
      t.decimal :menor_preco, :precision => 8, :scale => 2
      t.decimal :maior_preco, :precision => 8, :scale => 2
      t.boolean :estacionamento
    end
  end

end
