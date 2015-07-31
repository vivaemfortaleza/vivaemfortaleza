# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150729014817) do

  create_table "estabelecimentos", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "email"
    t.string   "site"
    t.string   "fanpage"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "selos_id"
    t.decimal  "menor_preco",    precision: 8, scale: 2
    t.decimal  "maior_preco",    precision: 8, scale: 2
    t.boolean  "estacionamento"
  end

  create_table "estabelecimentos_selos", id: false, force: :cascade do |t|
    t.integer "estacionamento_id", null: false
    t.integer "selo_id",           null: false
  end

  create_table "horario_estabelecimentos", force: :cascade do |t|
    t.integer  "dia"
    t.time     "hora_inicial"
    t.time     "hora_final"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "estabelecimentos_id"
  end

  create_table "selos", force: :cascade do |t|
    t.string   "nome"
    t.string   "classe_css"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "login"
    t.string   "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
