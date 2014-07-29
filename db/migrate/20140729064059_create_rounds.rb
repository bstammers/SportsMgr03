class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :round_no
      t.date :round_date
      t.references :draw, index: true

      t.timestamps
    end
  end
end
