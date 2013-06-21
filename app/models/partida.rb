class Partida < ActiveRecord::Base
  
  belongs_to :team, :class_name => "Team", :foreign_key => "team_id"
    
  belongs_to :estadio, :class_name => "Estadio", :foreign_key => "estadio_id"
  
  
  
  attr_accessible :estadio_id, :horario, :team_id, :team_id2, :golsA, :golsB
  

  
end
