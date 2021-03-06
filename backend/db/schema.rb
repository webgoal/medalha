# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161211115119) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atividade_usuarios", force: :cascade do |t|
    t.integer  "atividade_id"
    t.integer  "usuario_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["atividade_id"], name: "index_atividade_usuarios_on_atividade_id", using: :btree
    t.index ["usuario_id"], name: "index_atividade_usuarios_on_usuario_id", using: :btree
  end

  create_table "atividades", force: :cascade do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participante_atividades", force: :cascade do |t|
    t.string   "atividade"
    t.string   "participante"
    t.integer  "quantidade"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "product2s", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product3s", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "setor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
