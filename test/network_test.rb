require './test/test_helper'

class NetworkTest < Minitest::Test
  def setup
    @nbc = Network.new("NBC")
  end

  def test_it_exists
    assert_instance_of Network, @nbc
  end
end
