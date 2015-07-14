class Artist < ActiveRecord::Base
  has_many :songs
  has_many :jt_artists_albums
  has_many :albums, through: :jt_artists_albums

  validates :name, presence: true
  validates :name, uniqueness: true
end
