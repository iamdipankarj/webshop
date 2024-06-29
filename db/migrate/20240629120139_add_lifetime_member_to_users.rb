class AddLifetimeMemberToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :lifetime_member, :boolean, default: false, null: false
    add_index :users, :lifetime_member
  end
end
