class River

  attr_accessor :fishy_food, :river_name


def initialize(fishes, river_name)
  @fishy_food = fishes
  @river_name = river_name
end

def fish_eaten
  @fishy_food.delete_at(0)
end

def bear_eat_fish(bear)
  bear.bear_stomach.push(@fishy_food[0])
  fish_eaten
end

def fishy_food_count
  return @fishy_food.count
end

end
