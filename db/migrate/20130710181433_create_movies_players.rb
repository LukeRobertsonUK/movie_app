class CreateMoviesPlayers < ActiveRecord::Migration
  def change
    create_table :movies_players do |t|
      t.references :movie
      t.references :player
      t.references :role
      t.timestamps
    end
  end
end
