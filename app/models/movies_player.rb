class MoviesPlayer < ActiveRecord::Base
  attr_accessible :movie_ids, :player_ids, :role_ids
  belongs_to :player
  belongs_to :movie
  belongs_to :role
end
