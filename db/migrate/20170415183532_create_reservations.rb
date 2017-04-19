class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.datetime :tee_time
      t.integer :user_id
      t.integer :golf_club_id

      t.timestamps
    end
  end
end
