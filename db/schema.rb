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

ActiveRecord::Schema.define(version: 20150714014244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string   "title",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "song_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "bio"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "song_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jt_artists_albums", force: :cascade do |t|
    t.integer  "album_id_id"
    t.integer  "artist_id_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "jt_artists_albums", ["album_id_id"], name: "index_jt_artists_albums_on_album_id_id", using: :btree
  add_index "jt_artists_albums", ["artist_id_id"], name: "index_jt_artists_albums_on_artist_id_id", using: :btree

  create_table "jt_songs_genres", force: :cascade do |t|
    t.integer  "genre_id_id"
    t.integer  "song_id_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "jt_songs_genres", ["genre_id_id"], name: "index_jt_songs_genres_on_genre_id_id", using: :btree
  add_index "jt_songs_genres", ["song_id_id"], name: "index_jt_songs_genres_on_song_id_id", using: :btree

  create_table "jt_songs_playlists", force: :cascade do |t|
    t.integer  "song_id_id"
    t.integer  "playlist_id_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "jt_songs_playlists", ["playlist_id_id"], name: "index_jt_songs_playlists_on_playlist_id_id", using: :btree
  add_index "jt_songs_playlists", ["song_id_id"], name: "index_jt_songs_playlists_on_song_id_id", using: :btree

  create_table "playlists", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "title",      null: false
    t.integer  "length",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "artist_id"
  end

  add_foreign_key "albums", "songs"
  add_foreign_key "artists", "songs"
  add_foreign_key "songs", "artists"
end
