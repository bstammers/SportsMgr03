class CreateMatchSets < ActiveRecord::Migration
  def change
    create_table :match_sets do |t|
      t.integer :team1_points
      t.integer :team2_points
      t.string :winner
      t.references :match, index: true

      t.timestamps
    end
  end
end
