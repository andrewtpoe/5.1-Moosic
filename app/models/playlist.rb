class Playlist < ActiveRecord::Base
  has_many :jt_songs_playlists
  has_many :songs, through: :jt_songs_playlists

  validates :name, presence: true
  validates :name, uniqueness: true
end
