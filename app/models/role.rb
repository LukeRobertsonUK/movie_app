class Role < ActiveRecord::Base
  attr_accessible :name, :movies_players_ids
  has_many :movies_players
  has_many :players, :through => :movies_players
  has_many :movies, :through => :movies_players
end
