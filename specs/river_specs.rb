require('minitest/autorun')
require('minitest/reporters')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')


Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestRiver < MiniTest::Test

  def setup
    fish = ["Martin", "Dinner", "Supper"]
    @river = River.new(fish, "Eden")
    @bear = Bear.new("Cynthia-Delaney", "Grizzly")

  end

  def test_name_of_river
    assert_equal("Eden", @river.river_name)
  end

  def test_amount_of_fish
    assert_equal(3, @river.fishy_food.length)
  end

  def test_fish_eaten
    @river.fish_eaten
    assert_equal(2, @river.fishy_food.count)
  end

  def test_bear_eat_fish
    @river.bear_eat_fish(@bear)
    assert_equal(2,@river.fishy_food_count)
    assert_equal(1, @bear.bear_stomach_count)
    assert_equal("ROOAAAR", @bear.bear_roar)
  end

end
