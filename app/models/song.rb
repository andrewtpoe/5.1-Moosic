class Song < ActiveRecord::Base
  validates :length, numericality: true
  validates :length, :title, :artist_id, presence: true
  validates :title, uniqueness: { scope: :artist_id }
end
