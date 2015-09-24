class CreateArquivoImagems < ActiveRecord::Migration
  def change
    create_table :arquivo_imagems do |t|
      t.timestamps null: false
    end
  end
end
