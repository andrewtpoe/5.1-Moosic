class AddIdTrackingColumnsToTables < ActiveRecord::Migration
  def change
    remove_column :songs, :artist_id

    add_reference :artists, :song
    add_foreign_key :artists, :songs

    add_reference :albums, :song
    add_foreign_key :albums, :songs

    add_reference :songs, :artist
    add_foreign_key :songs, :artists
  end
end
