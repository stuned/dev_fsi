class Estadio < ActiveRecord::Base
  attr_accessible :cidade, :estado, :nome
  
  has_many :partida
 
 validates_presence_of :nome
 validates_presence_of :cidade
 validates_presence_of :estado
 
end
