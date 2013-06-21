class AddCampoToPartidas < ActiveRecord::Migration
  def change
    add_column :partidas, :team_id2, :integer
  end
end
