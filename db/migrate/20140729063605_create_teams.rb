class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :captain
      t.string :secondary_contact
      t.integer :games_played
      t.integer :games_won
      t.integer :games_lost
      t.integer :games_drawn
      t.integer :sets_won
      t.integer :sets_lost
      t.integer :sets_tied
      t.integer :points_for
      t.integer :point_against
      t.decimal :points_percent
      t.integer :sets_for
      t.integer :sets_against
      t.decimal :sets_percent
      t.integer :competition_points
      t.references :division, index: true

      t.timestamps
    end
  end
end
