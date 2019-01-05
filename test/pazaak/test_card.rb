require 'minitest/autorun'
require 'pazaak'

class CardTest < Minitest::Test
  (1..10).each do |val|
    define_method("test_card_valid_value_#{val}") do
      card = Pazaak::Card.new(val)
      assert_equal(val, card.value)
    end
  end

  [-1000000, -7, -1, 0, 11, 1000000].each do |val|
    define_method("test_card_invalid_integer_value_#{val}") do
      ex = assert_raises RuntimeError do
        Pazaak::Card.new(val)
      end

      assert_equal 'Invalid value', ex.message
    end
  end

  [-9.999999, -3.14, -1.000001, 1.000001, 3.14, 9.999999, 'a', Object.new].each do |val|
    define_method("test_card_invalid_value_#{val}") do
      ex = assert_raises RuntimeError do
        Pazaak::Card.new(val)
      end

      assert_equal 'Invalid value', ex.message
    end
  end
end
