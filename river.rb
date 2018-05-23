class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def count_river_contents
    @fish.count()
  end

  def add_fish_to_river(fish)
    @fish << fish
  end

  def empty_river
    @fish.clear
  end

end
