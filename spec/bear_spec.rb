require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class FishTest < MiniTest::Test
  def setup
    fish1 = Fish.new('nemo')
    fish2 = Fish.new('ponyo')
    fish3 = Fish.new('dory')
    fishes = [fish1, fish2, fish3]
    @river = River.new('Amazon', fishes)
    @bear = Bear.new('Beorn')
  end

  def test_bear_has_name
    assert_equal('Beorn', @bear.name)
  end

  def test_bear_has_type
    assert_equal('Grizzly', @bear.type)
  end

  def test_bear_has_empty_stomach
    assert_equal(0, @bear.food_count)
  end

  def test_bear_can_catch_fish
    @bear.catch_fish(@river, @river.fishes[0])
    assert_equal(1, @bear.food_count)
    assert_equal(2, @river.fish_count)
  end

  def test_bear_can_roar
    assert_equal('Roarrrrr!!!', @bear.roar)
  end
end
