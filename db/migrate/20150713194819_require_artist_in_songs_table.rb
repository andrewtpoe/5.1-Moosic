class RequireArtistInSongsTable < ActiveRecord::Migration
  def change
    change_column :songs, :artist_id, 'integer USING CAST(artist_id as integer)', null: false
  end
end
