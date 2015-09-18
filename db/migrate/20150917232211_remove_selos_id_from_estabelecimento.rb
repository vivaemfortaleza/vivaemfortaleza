class RemoveSelosIdFromEstabelecimento < ActiveRecord::Migration
  def change
    remove_column :estabelecimentos, :selos_id 
  end
end
