class Role < ActiveRecord::Base
  attr_accessible :name, :movies_players_ids
  has_many :movies_players
end
