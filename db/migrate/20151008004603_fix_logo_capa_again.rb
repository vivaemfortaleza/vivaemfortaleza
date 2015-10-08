class FixLogoCapaAgain < ActiveRecord::Migration
  def change
    remove_column :estabelecimentos, :logotipo_id
    remove_column :estabelecimentos, :capa_id

    change_table :estabelecimentos do |t|
      t.integer :logotipo
      t.integer :capa
    end
  end
end
