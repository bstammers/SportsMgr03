class CreateDraws < ActiveRecord::Migration
  def change
    create_table :draws do |t|
      t.date :start_date
      t.date :end_date
      t.references :division, index: true

      t.timestamps
    end
  end
end
