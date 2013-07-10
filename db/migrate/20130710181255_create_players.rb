class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.date :birth_date
      t.string :sex
      t.text :biography

      t.timestamps
    end
  end
end
