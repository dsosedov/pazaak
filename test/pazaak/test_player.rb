require 'minitest/autorun'
require 'pazaak'

class GameTest < Minitest::Test
  def test_player_new
    player = Pazaak::Player.new('Carth')
    assert_equal('Carth', player.name)
  end

  def test_player_hit_and_total
    player = Pazaak::Player.new('Calo')
    assert_equal(0, player.total)
    player.hit(Pazaak::Card.new(10))
    assert_equal(10, player.total)
    player.hit(Pazaak::Card.new(5))
    assert_equal(15, player.total)
  end

  [-5, 4].each do |val|
    define_method("test_player_adjust_#{val}") do
      player = Pazaak::Player.new('Gerouk')
      player.hit(Pazaak::Card.new(10))
      player.hit(Pazaak::PlayerCard.new(val))
      assert_equal(10 + val, player.total)
    end
  end

  def test_player_stand
    player = Pazaak::Player.new('Mission')
    refute(player.is_standing)
    player.stand
    assert(player.is_standing)
  end
end
