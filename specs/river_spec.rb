require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class RiverTest < Minitest::Test

  def setup
    @river = River.new("Nile", ["fish1", "fish2", "fish3"])
  end


def test_river_name
assert_equal("Nile", @river.name)
end

end
