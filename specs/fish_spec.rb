require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class FishTest < Minitest::Test

def setup
@fish = Fish.new("Fishworth")
end

def test_fish_name
  assert_equal("Fishworth", @fish.name)
end


end
