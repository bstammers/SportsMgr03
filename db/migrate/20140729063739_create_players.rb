class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :phone
      t.string :email
      t.string :password_digest
      t.string :avatar
      t.boolean :admin_flag
      t.boolean :manager_flag
      t.references :team, index: true
      t.references :competition, index: true

      t.timestamps
    end
  end
end
