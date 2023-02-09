
ActiveRecord::Schema.define(version: 2023_02_09_023258) do

  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.text "email"
    t.string "passwrod_digest"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_users_on_user_id"
  end

  add_foreign_key "users", "users"
end
