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

ActiveRecord::Schema.define(version: 20141013224813) do

  create_table "autores", force: true do |t|
    t.string   "nome"
    t.string   "nacionalidade"
    t.string   "resumoBiografia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entradas", force: true do |t|
    t.float    "preco"
    t.integer  "ingresso_id"
    t.integer  "museuLocal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entradas", ["ingresso_id"], name: "index_entradas_on_ingresso_id"
  add_index "entradas", ["museuLocal_id"], name: "index_entradas_on_museuLocal_id"

  create_table "exposicoes", force: true do |t|
    t.string   "nome"
    t.string   "paisOrigem"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingressos", force: true do |t|
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "museu_locais", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "horario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pecas", force: true do |t|
    t.string   "nome"
    t.integer  "ano"
    t.string   "descricao"
    t.integer  "exposicao_id"
    t.integer  "autor_id"
    t.integer  "tipoPeca_id"
    t.integer  "periodoLiterario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pecas", ["autor_id"], name: "index_pecas_on_autor_id"
  add_index "pecas", ["exposicao_id"], name: "index_pecas_on_exposicao_id"
  add_index "pecas", ["periodoLiterario_id"], name: "index_pecas_on_periodoLiterario_id"
  add_index "pecas", ["tipoPeca_id"], name: "index_pecas_on_tipoPeca_id"

  create_table "periodo_exposicoes", force: true do |t|
    t.date     "data_inicio"
    t.date     "data_fim"
    t.integer  "museuLocal_id"
    t.integer  "exposicao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "periodo_exposicoes", ["exposicao_id"], name: "index_periodo_exposicoes_on_exposicao_id"
  add_index "periodo_exposicoes", ["museuLocal_id"], name: "index_periodo_exposicoes_on_museuLocal_id"

  create_table "periodo_literarios", force: true do |t|
    t.string   "nome"
    t.integer  "anoInicio"
    t.integer  "anoFim"
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_pecas", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
