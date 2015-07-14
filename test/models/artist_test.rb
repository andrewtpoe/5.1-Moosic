require 'test_helper'

class ArtistTest < ActiveSupport::TestCase

  test "ideal conditions work" do
    Artist.create(name: "test_name")
    founda = Artist.find_by(name: "test_name")
    assert founda
    assert_equal founda.class, Artist
  end

  test "can not create without name" do
    a = Artist.new(name: nil)
    refute a.valid?
  end

  test "must have unique name" do
    Artist.create(name: "test_name")
    a = Artist.new(name: "test_name")
    refute a.valid?
  end

end
