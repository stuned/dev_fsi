class AddCampo2ToPartidas < ActiveRecord::Migration
  def change
    add_column :partidas, :golsA, :integer
    add_column :partidas, :golsB, :integer
  end
end
