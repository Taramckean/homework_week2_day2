require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class FishTest < Minitest::Test

  def setup
    @fish1 = Fish.new("Tuna Turner")
  end

  def test_fish_name
    assert_equal("Tuna Turner", @fish1.name)
  end

end
