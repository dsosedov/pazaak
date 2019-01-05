require 'minitest/autorun'
require 'pazaak'

class PazaakTest < Minitest::Test
  def test_version
    assert_equal('0.1.0', Pazaak::VERSION)
  end

  def test_public_constants
    assert_equal([:Card, :Game, :Player, :VERSION], Pazaak.constants.sort)
  end

  def test_private_constants_max
    ex = assert_raises NameError do
      Pazaak::MAX
    end

    assert_equal 'private constant Pazaak::MAX referenced', ex.message
  end

  def test_private_constants_min
    ex = assert_raises NameError do
      Pazaak::MIN
    end

    assert_equal 'private constant Pazaak::MIN referenced', ex.message
  end

  def test_private_constants_rev
    ex = assert_raises NameError do
      Pazaak::REV
    end

    assert_equal 'private constant Pazaak::REV referenced', ex.message
  end
end
