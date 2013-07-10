class Studio < ActiveRecord::Base
  attr_accessible :name, :movie_ids
  has_many :movies
end
