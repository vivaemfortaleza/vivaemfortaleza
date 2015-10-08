class FixLogoCapa < ActiveRecord::Migration
  def change
    remove_column :arquivo_imagems, :logotipo_id
    remove_column :arquivo_imagems, :capa_id

    change_table :estabelecimentos do |t|
      t.integer :logotipo_id
      t.integer :capa_id
    end
  end
end
