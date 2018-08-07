require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class FishTest < MiniTest::Test
  def setup
    fish1 = Fish.new('nemo')
    fish2 = Fish.new('ponyo')
    fish3 = Fish.new('dory')
    fishes = [fish1, fish2, fish3]
    @river = River.new('Amazon', fishes)
  end

  def test_river_has_name
    assert_equal('Amazon', @river.name)
  end

  def test_river_has_fish
    assert_equal(3, @river.fishes().length())
  end

  def test_fish_count
    assert_equal(3, @river.fish_count)
  end

end
