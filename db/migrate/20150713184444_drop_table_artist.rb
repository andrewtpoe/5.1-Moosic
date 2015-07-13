class DropTableArtist < ActiveRecord::Migration
  def change
    drop_table :artists
    drop_table :drop_table_artists
  end
end
