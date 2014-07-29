class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.string :manager
      t.string :manager_phone
      t.string :manager_email
      t.string :location
      t.boolean :points_flag
      t.boolean :sets_flag
      t.boolean :mvp_flag

      t.timestamps
    end
  end
end
