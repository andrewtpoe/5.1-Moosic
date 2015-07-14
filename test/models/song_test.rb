require 'test_helper'

class SongTest < ActiveSupport::TestCase

  test "can not create without title" do
    s = Song.new(title: nil, length: 200, artist_id: 1)
    refute s.valid?
  end

  test "can not create without artist_id" do
    s = Song.new(title: "test_song", length: 200, artist_id: nil)
    refute s.valid?
  end

  test "can not create without length" do
    s = Song.new(title: "test_song", length: nil, artist_id: 1)
    refute s.valid?
  end

  test "length must be integer" do
    s = Song.new(title: "test_song", length: "not an int", artist_id: 1)
    refute s.valid?
  end

  test "artist can have multiple songs" do
    s = Song.create(title: "test_song", length: 200, artist_id: 1)
    s2 = Song.new(title: "test_song2", length: 200, artist_id: 1)
    assert s2.valid?
  end

  test "songs can have multiple artists" do
    s = Song.create(title: "test_song", length: 200, artist_id: 1)
    s2 = Song.new(title: "test_song", length: 200, artist_id: 2)
    assert s2.valid?
  end

  test "can not have duplicated artist & song" do
    s = Song.create(title: "test_song", length: 200, artist_id: 1)
    s2 = Song.new(title: "test_song", length: 200, artist_id: 1)
    refute s2.valid?

  end

  test "ideal conditions work" do
    s = Song.create(title: "test_song", length: 200, artist_id: 1)
    founds = Song.find_by(title: "test_song")
    assert founds
    assert_equal founds.class, Song
  end

end
