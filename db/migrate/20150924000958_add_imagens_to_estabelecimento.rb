class AddImagensToEstabelecimento < ActiveRecord::Migration
  def change
    change_table :arquivo_imagems do |t|
      t.belongs_to :estabelecimentos
    end
  end
end
