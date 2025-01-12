# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_28_211357) do

  create_table "forums_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "forum_id", null: false
    t.index ["forum_id", "user_id"], name: "index_forums_users_on_forum_id_and_user_id"
    t.index ["user_id", "forum_id"], name: "index_forums_users_on_user_id_and_forum_id"
  end

end
