require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Smokey", "Grizzly")
  end

def test_bear_name
  assert_equal("Smokey", @bear.name)
end

def test_bear_type
  assert_equal("Grizzly", @bear.type)
end



end
