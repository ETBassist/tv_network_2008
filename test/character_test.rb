require './test/test_helper'

class CharacterTest < Minitest::Test
  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  end

  def test_it_exists
    assert_instance_of Character, @kitt
  end

  def test_can_get_name_of_character
    assert_equal "KITT", @kitt.name
  end

  def test_can_get_actor
    assert_equal "William Daniels", @kitt.actor
  end

  def test_can_get_salary
    assert_equal 1000000, @kitt.salary
  end

end
