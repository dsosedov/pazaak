require 'minitest/autorun'
require 'pazaak'

class GameTest < Minitest::Test
  def test_new_player
    player = Pazaak::Player.new('Carth')
    assert_equal('Carth', player.name)
  end

  def test_hit_and_total
    player = Pazaak::Player.new('Calo')
    assert_equal(0, player.total)
    player.hit(Pazaak::Card.new(10))
    assert_equal(10, player.total)
    player.hit(Pazaak::Card.new(5))
    assert_equal(15, player.total)
  end
end
