class CreateDropTableArtists < ActiveRecord::Migration
  def change
    create_table :drop_table_artists do |t|

      t.timestamps null: false
    end
  end
end
