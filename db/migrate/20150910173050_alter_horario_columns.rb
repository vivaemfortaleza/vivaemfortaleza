class AlterHorarioColumns < ActiveRecord::Migration
  def change
    remove_column :horario_estabelecimentos, :estabelecimentos_id
    drop_table :tests
    drop_table :pessoas
    drop_table :people


    change_table :horario_estabelecimentos do |t|
      t.belongs_to :estabelecimento
    end


  end
end
