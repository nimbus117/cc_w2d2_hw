class Bear
  attr_reader(:name)

  def initialize(name)
    @name = name
    @stomach = []
  end

  def food_count
    return @stomach.count
  end

  def catch_fish(river, fish)
    river.remove_fish(fish)
    @stomach.push(fish)
  end

  def roar
    return 'Roarrrrr!!!'
  end
end
