class CreateJtSongsGenres < ActiveRecord::Migration
  def change
    create_table :jt_songs_genres do |t|
      t.belongs_to :genre_id, index: true
      t.belongs_to :song_id, index: true

      t.timestamps null: false
    end
  end
end
