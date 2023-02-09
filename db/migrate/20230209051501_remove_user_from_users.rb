class RemoveUserFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :users, :users
    remove_reference :users, :user, index: true
  end
end
