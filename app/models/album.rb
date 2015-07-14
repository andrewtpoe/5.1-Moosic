class Album < ActiveRecord::Base
  has_many :jt_artists_albums
  has_many :albums, through: :jt_artists_albums
  has_many :songs

  validates :title, presence: true
  validates :title, uniqueness: true
end
