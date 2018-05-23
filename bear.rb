class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  # def pick_up_from_stop(stop)
  #   for person in stop.queue()
  #     pick_up(person)
  #   end
  #   stop.clear_queue()
  # end

  # def take_fish_from_river(river)
  #   for fish in river
  #     eat_fish(fish)
  #   end
  #   river.empty_river()
  # end

  def eat_fish(fish)
    @stomach << fish
  end

  def count_stomach_contents
    return @stomach.count()
  end

  def bear_roar
    return "ROAAAAAR!"
  end

end
