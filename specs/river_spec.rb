require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class RiverTest < Minitest::Test

  def setup
    @river = River.new("Nile")
    @fish1 = Fish.new("Tuna Turner")
    @fish2 = Fish.new("Salmon Rushdie")
    @fish3 = Fish.new("Oj Shrimpson")
  end

  def test_river_name
    assert_equal("Nile", @river.name)
  end

  def test_add_fish_to_river
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    @river.add_fish_to_river(@fish3)
    assert_equal(3, @river.count_river_contents())
  end


end
