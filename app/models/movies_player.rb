class MoviesPlayer < ActiveRecord::Base
  attr_accessible :movie_id, :player_id, :role_id, :involvement
  belongs_to :player
  belongs_to :movie
  belongs_to :role
end
