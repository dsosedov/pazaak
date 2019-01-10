module Pazaak
  class Game
    attr_reader :current_player, :player_one, :player_two

    def initialize(player_one, player_two)
      @player_one = player_one
      @player_two = player_two
      @deck = [
        Card.new(1),
        Card.new(2),
        Card.new(3),
        Card.new(4),
        Card.new(5),
        Card.new(6),
        Card.new(7),
        Card.new(8),
        Card.new(9),
        Card.new(10),
      ] * 4
      nil
    end

    def start
      @deck.shuffle!
      prng = Random.new
      @current_player = prng.rand(1..2) == 1 ? @player_one : @player_two
      nil
    end

    def deck_count
      @deck.count
    end
  end
end
