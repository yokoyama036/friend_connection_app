class RemovePictureFromPictsures < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :pictures, :pictures
    remove_reference :pictures, :picture, index: true
  end
end
