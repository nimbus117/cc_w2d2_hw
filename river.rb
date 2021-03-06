class River

  attr_reader(:name, :fishes)

  def initialize(name, fishes = [])
    @name = name
    @fishes = fishes
  end

  def fish_count
    return @fishes.length
  end

  def remove_fish(fish)
    @fishes.delete(fish)
  end
end
