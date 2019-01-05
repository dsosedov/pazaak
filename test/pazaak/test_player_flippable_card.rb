require 'minitest/autorun'
require 'pazaak'

class PlayerFlippableCardTest < Minitest::Test
  (1..6).each do |val|
    define_method("test_player_flippable_card_valid_value_#{val}") do
      card = Pazaak::PlayerFlippableCard.new(val)
      assert_equal(val, card.value)
    end
  end

  ([-1000000, -7] + (-6..-1).to_a + [0, 7, 1000000]).each do |val|
    define_method("test_player_flippable_card_invalid_integer_value_#{val}") do
      ex = assert_raises RuntimeError do
        Pazaak::PlayerFlippableCard.new(val)
      end

      assert_equal 'Invalid value', ex.message
    end
  end

  [-5.999999, -3.14, -1.000001, 1.000001, 3.14, 5.999999, 'a', Object.new].each do |val|
    define_method("test_player_flippable_card_invalid_value_#{val}") do
      ex = assert_raises RuntimeError do
        Pazaak::PlayerFlippableCard.new(val)
      end

      assert_equal 'Invalid value', ex.message
    end
  end
end
