class Player < ActiveRecord::Base
  attr_accessible :biography, :birth_date, :name, :sex, :movies_players_ids
  has_many :movies_players
  has_many :movies, :through => :movies_players
  has_many :roles, :through => :movies_players




end
