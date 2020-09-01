require './test/test_helper'

class NetworkTest < Minitest::Test
  def setup
    @nbc = Network.new("NBC")
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
    @leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    @ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    @parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [@leslie_knope, @ron_swanson])
  end

  def test_it_exists
    assert_instance_of Network, @nbc
  end

  def test_can_get_name_and_shows
    assert_equal "NBC", @nbc.name
    assert_equal [], @nbc.shows
  end

  def test_can_add_shows
    assert_equal [], @nbc.shows
    @nbc.add_show(@knight_rider)
    assert_equal [@knight_rider], @nbc.shows
    @nbc.add_show(@parks_and_rec)
    assert_equal [@knight_rider, @parks_and_rec], @nbc.shows
  end

  def test_can_find_main_characters
    @nbc.add_show(@knight_rider)
    @nbc.add_show(@parks_and_rec)
    assert_equal [@kitt], @nbc.main_characters
  end

  def test_can_get_actors_by_show
    @nbc.add_show(@knight_rider)
    @nbc.add_show(@parks_and_rec)
    expected = {@knight_rider => [@michael_knight, @kitt], @parks_and_rec => [@leslie_knope, @ron_swanson]}
    assert_equal expected, @nbc.actors_by_show
  end
end
