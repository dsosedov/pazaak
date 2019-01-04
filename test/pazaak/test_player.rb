require 'minitest/autorun'
require 'pazaak'

class GameTest < Minitest::Test
  def test_new_player
    player = Pazaak::Player.new('Carth')
    assert_equal('Carth', player.name)
  end
end
