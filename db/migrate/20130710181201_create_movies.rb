class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.date :release_date
      t.decimal :gross_takings
      t.string :certificate
      t.integer :review_score
      t.text :plot_summary
      t.references :studio
      t.references :genre
      t.timestamps
    end
  end
end
