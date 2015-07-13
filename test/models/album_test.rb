require 'test_helper'

class AlbumTest < ActiveSupport::TestCase

  test "ideal conditions work" do
    Album.create(title: "test_title")
    founda = Album.find_by(title: "test_title")
    assert founda
    assert_equal founda.class, Album
  end

  test "can not create without title" do
    a = Album.new(title: nil)
    refute a.valid?
  end

  test "album title must be unique" do
    Album.create(title: "test_title")
    a = Album.new(title: "test_title")
    refute a.valid?
  end

end
