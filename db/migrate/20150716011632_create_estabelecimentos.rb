class CreateEstabelecimentos < ActiveRecord::Migration
  def change
    create_table :estabelecimentos do |t|
      t.string :nome
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :email
      t.string :site
      t.string :fanpage

      t.timestamps null: false
    end
  end
end
