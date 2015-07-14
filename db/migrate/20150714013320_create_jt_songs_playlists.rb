class CreateJtSongsPlaylists < ActiveRecord::Migration
  def change
    create_table :jt_songs_playlists do |t|
      t.belongs_to :song_id, index: true
      t.belongs_to :playlist_id, index: true

      t.timestamps null: false
    end
  end
end
