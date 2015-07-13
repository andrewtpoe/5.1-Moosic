require 'test_helper'

class PlaylistTest < ActiveSupport::TestCase

  test "ideal conditions work" do
    p = Playlist.create(name: "superstars")
    foundp = Playlist.find_by(name: "superstars")
    assert foundp
    assert_equal foundp.class, Playlist
  end

  test "can not create without name" do
    p = Playlist.new
    refute p.valid?
  end

  test "must have unique name" do
    p = Playlist.create(name: "superstars")
    p2 = Playlist.new(name: "superstars")
    refute p2.valid?
  end

end
