require 'test_helper'

class GenreTest < ActiveSupport::TestCase

  test "ideal conditions work" do
    g = Genre.create(name: "Rock")
    foundg = Genre.find_by(name: "Rock")
    assert foundg
    assert_equal foundg.class, Genre
  end

  test "can not create without name" do
    g = Genre.new
    refute g.valid?
  end

  test "must have unique name" do
    g = Genre.create(name: "Rock")
    g2 = Genre.new(name: "Rock")
    refute g2.valid?
  end

end
