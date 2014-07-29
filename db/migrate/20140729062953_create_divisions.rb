class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :name
      t.references :competition, index: true

      t.timestamps
    end
  end
end
