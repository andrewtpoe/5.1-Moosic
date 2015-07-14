class Genre < ActiveRecord::Base
  has_many :jt_songs_genres
  has_many :songs, through: :jt_songs_genres

  validates :name, presence: true
  validates :name, uniqueness: true

end
