class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :team1
      t.string :team2
      t.string :court
      t.time :match_time
      t.integer :team1_points
      t.integer :team2_points
      t.integer :team1_sets
      t.integer :team2_sets
      t.string :mvp
      t.decimal :team1_fees
      t.decimal :team2_fees
      t.references :round, index: true

      t.timestamps
    end
  end
end
