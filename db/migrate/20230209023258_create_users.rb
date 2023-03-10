class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :email
      t.string :passwrod_digest
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
