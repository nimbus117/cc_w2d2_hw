require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class FishTest < MiniTest::Test
  def test_fish_has_name
    fish = Fish.new('nemo')
    assert_equals('nemo', fish.name)
  end
end
