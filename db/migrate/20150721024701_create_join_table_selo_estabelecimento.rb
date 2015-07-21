class CreateJoinTableSeloEstabelecimento < ActiveRecord::Migration
  def change
    create_table :estabelecimentos_selos, id: false do |t|
      t.belongs_to :estacionamento, null: false
      t.belongs_to :selo, null: false
    end
  end
end
