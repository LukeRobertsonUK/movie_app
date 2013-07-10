class AddFieldToMoviesPlayers < ActiveRecord::Migration
  def change
    add_column :movies_players, :involvement, :text
  end
end
