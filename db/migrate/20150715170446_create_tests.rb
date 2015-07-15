class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
