require './test/test_helper'

class NetworkTest < Minitest::Test
  def setup
    @nbc = Network.new("NBC")
  end

  def test_it_exists
    assert_instance_of Network, @nbc
  end

  def test_can_get_name_and_shows
    assert_equal "NBC", @nbc.name
    assert_equal [], @nbc.shows
  end
end
