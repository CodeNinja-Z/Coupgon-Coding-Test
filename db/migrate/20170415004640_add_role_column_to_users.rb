class AddRoleColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :role, :string, after: :email
  end
end
