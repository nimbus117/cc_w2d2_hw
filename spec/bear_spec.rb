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
end
