class Team < ActiveRecord::Base
  attr_accessible :escalacao, :grupo, :nome, :perfil
  
  has_many :partidas
  
  validates_presence_of :nome
  
  
end
