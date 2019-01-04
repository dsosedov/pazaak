require 'minitest/autorun'
require 'pazaak'

class GameTest < Minitest::Test
  def test_new_game
    player1 = Pazaak::Player.new('Ujaa')
    player2 = Pazaak::Player.new('Elinda')
    game = Pazaak::Game.new(player1, player2)
    assert_equal('Ujaa', game.player_one.name)
    assert_equal('Elinda', game.player_two.name)
  end
end
