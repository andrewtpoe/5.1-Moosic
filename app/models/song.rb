class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :album
  has_many :jt_songs_genres
  has_many :genres, through: :jt_songs_genres
  has_many :jt_songs_playlists
  has_many :playlists, through: :jt_songs_playlists

  validates :length, numericality: true
  validates :length, :title, :artist_id, presence: true
  validates :title, uniqueness: { scope: :artist_id }
end
