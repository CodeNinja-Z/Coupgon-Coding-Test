class CreateGolfClubs < ActiveRecord::Migration[5.0]
  def change
    create_table :golf_clubs do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
