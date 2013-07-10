class Movie < ActiveRecord::Base
  attr_accessible :certificate, :gross_takings, :name, :plot_summary, :release_date, :review_score, :studio_id, :genre_id, :movies_players_ids
  belongs_to :genre
  belongs_to :studio
  has_many :movies_players
  has_many :players, :through => :movies_players
  has_many :roles, :through => :movies_players
end
