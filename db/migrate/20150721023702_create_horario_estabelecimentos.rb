class CreateHorarioEstabelecimentos < ActiveRecord::Migration
  def change
    create_table :horario_estabelecimentos do |t|
      t.integer :dia
      t.time :hora_inicial
      t.time :hora_final

      t.timestamps null: false
    end
  end
end
