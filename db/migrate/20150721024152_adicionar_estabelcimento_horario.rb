class AdicionarEstabelcimentoHorario < ActiveRecord::Migration
  def change

    change_table :horario_estabelecimentos do |t|
      t.belongs_to :estabelecimentos
    end

  end
end
