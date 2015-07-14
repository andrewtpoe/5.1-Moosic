class CreateJtArtistsAlbums < ActiveRecord::Migration
  def change
    create_table :jt_artists_albums do |t|
      t.belongs_to :album_id, index: true
      t.belongs_to :artist_id, index: true

      t.timestamps null: false
    end
  end
end
