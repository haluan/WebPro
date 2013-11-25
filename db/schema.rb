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

ActiveRecord::Schema.define(version: 20131121112837) do

  create_table "abesnsis", force: true do |t|
    t.string   "status"
    t.integer  "siswa_id"
    t.integer  "jadwal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins", force: true do |t|
    t.string   "nip"
    t.string   "nama"
    t.string   "email"
    t.string   "password_digest"
    t.string   "alamat"
    t.string   "agama"
    t.string   "birthday"
    t.string   "birthplace"
    t.string   "ingat_aku"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "berekskuls", force: true do |t|
    t.string   "tahun"
    t.integer  "siswa_id"
    t.integer  "ekskul_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "berkelas", force: true do |t|
    t.string   "tahun_ajaran"
    t.integer  "siswa_id"
    t.integer  "kela_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ekskuls", force: true do |t|
    t.string   "nama"
    t.string   "deskripsi"
    t.integer  "guru_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gurus", force: true do |t|
    t.string   "nip"
    t.string   "nama"
    t.string   "email"
    t.string   "password_digest"
    t.string   "alamat"
    t.string   "agama"
    t.string   "birthday"
    t.string   "birthplace"
    t.string   "ingat_aku"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jadwals", force: true do |t|
    t.string   "hari"
    t.string   "jam"
    t.integer  "kela_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mengajar_id"
  end

  create_table "kelas", force: true do |t|
    t.string   "nama"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mapels", force: true do |t|
    t.string   "kode"
    t.string   "nama"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mengajars", force: true do |t|
    t.string   "tahun_ajaran"
    t.integer  "guru_id"
    t.integer  "mapel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nilaiakhirs", force: true do |t|
    t.string   "nilai"
    t.integer  "berkela_id"
    t.integer  "mapel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orangtuas", force: true do |t|
    t.string   "NIK"
    t.string   "nama"
    t.string   "email"
    t.string   "password_digest"
    t.string   "alamat"
    t.string   "pekerjaan"
    t.string   "agama"
    t.string   "birthday"
    t.string   "birthplace"
    t.string   "ingat_aku"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profilsekolahs", force: true do |t|
    t.string   "title"
    t.string   "deskripsi"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "siswas", force: true do |t|
    t.string   "nis"
    t.string   "nama"
    t.string   "email"
    t.string   "password_digest"
    t.string   "alamat"
    t.string   "agama"
    t.string   "birthday"
    t.string   "birthplace"
    t.string   "ingat_aku"
    t.string   "orangtua_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "walikelas", force: true do |t|
    t.string   "tahun_ajaran"
    t.integer  "kela_id"
    t.integer  "guru_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
