class AddLogoCapaToEstabelecimento < ActiveRecord::Migration
  def change
    change_table :arquivo_imagems do |t|
      t.integer :logotipo_id
      t.integer :capa_id
    end
  end
end
