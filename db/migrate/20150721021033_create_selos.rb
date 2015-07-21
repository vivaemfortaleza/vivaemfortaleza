class CreateSelos < ActiveRecord::Migration
  def change
    create_table :selos do |t|
      t.string :nome
      t.string :classe_css

      t.timestamps null: false
    end
  end
end
