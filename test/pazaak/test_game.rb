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

  def test_start_game
    player1 = Pazaak::Player.new('Niklos')
    player2 = Pazaak::Player.new('Zax')
    game = Pazaak::Game.new(player1, player2)
    game.start
    refute_nil(game.current_player)
  end

  def test_deal
    player1 = Pazaak::Player.new('Niklos')
    player2 = Pazaak::Player.new('Zax')
    game = Pazaak::Game.new(player1, player2)
    game.start
    game.deal
    assert_equal(39, game.deck_count)
    assert_equal(1, game.current_player.cards.count)
  end
end
