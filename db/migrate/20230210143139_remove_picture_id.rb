class RemovePictureId < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :pictures, :users
    remove_reference :users, :picture, index: true
  end
end
