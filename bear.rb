class Bear
  attr_reader(:name, :type)

  def initialize(name, type)
    @name = name
    @type = type
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
