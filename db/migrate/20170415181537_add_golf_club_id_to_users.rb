class AddGolfClubIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :golf_club_id, :integer, after: :email
  end
end
