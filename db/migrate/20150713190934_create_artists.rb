class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :song, null: false
      t.string :bio
      t.string :image

      t.timestamps null: false
    end
  end
end
