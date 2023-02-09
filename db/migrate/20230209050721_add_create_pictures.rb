class AddCreatePictures < ActiveRecord::Migration[6.1]
  def change
    add_reference :pictures, :picture, foreign_key: true
  end
end
