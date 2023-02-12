class RenamePasswrodcolumnToPassword < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :passwrod_digest, :password_digest
  end
end
