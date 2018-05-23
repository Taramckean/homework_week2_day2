require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Smokey", "Grizzly")
    @fish1 = Fish.new("Tuna Turner")
    @fish2 = Fish.new("Salmon Rushdie")
    @fish3 = Fish.new("Oj Shrimpson")
  end

  def test_bear_name
    assert_equal("Smokey", @bear.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @bear.type)
  end

#cheating method
  def test_bear_get_fish
    @river1 = River.new("Amazon")
    @river1.add_fish_to_river(@fish1)
    @river1.add_fish_to_river(@fish2)
    @river1.add_fish_to_river(@fish3)
    @bear.eat_fish(@fish1)
    @bear.eat_fish(@fish2)
    @bear.eat_fish(@fish3)
    @river1.empty_river
    assert_equal(3, @bear.count_stomach_contents)
    assert_equal(0, @river1.count_river_contents)
  end

#   def pick_up_from_stop(stop)
#     for person in stop.queue()
#       pick_up(person)
#     end
#     stop.clear_queue()
#   end
#
#   def test_pick_up_from_stop()
#   @stop1 = BusStop.new("Elm Row")
#   @stop1.add_to_queue(@passenger1)
#   @bus.pick_up_from_stop(@stop1)
#   assert_equal(1, @bus.passenger_count())
#   assert_equal(0, @stop1.queue_length())
# end

  def test_bear_roar
    assert_equal("ROAAAAAR!",@bear.bear_roar)
  end

end
