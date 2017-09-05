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

ActiveRecord::Schema.define(version: 20170905221819) do

  create_table "contactos", force: :cascade do |t|
    t.string "nombre"
    t.string "numero"
    t.string "archivo", default: "** cargado en linea **"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contactos_grupos", id: false, force: :cascade do |t|
    t.integer "grupo_id", null: false
    t.integer "contacto_id", null: false
  end

  create_table "contactos_mensajes", id: false, force: :cascade do |t|
    t.integer "mensaje_id", null: false
    t.integer "contacto_id", null: false
  end

  create_table "grupos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grupos_mensajes", id: false, force: :cascade do |t|
    t.integer "grupo_id", null: false
    t.integer "mensaje_id", null: false
  end

  create_table "mensajes", force: :cascade do |t|
    t.string "texto"
    t.integer "cantidad_contactos", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
