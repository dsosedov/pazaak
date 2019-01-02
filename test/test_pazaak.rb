require 'minitest/autorun'
require 'pazaak'

class PazaakTest < Minitest::Test
  def test_version
    assert_equal('0.0.1', Pazaak::VERSION)
  end

  def test_public_constants
    assert_equal([:VERSION], Pazaak.constants)
  end

  #def test_all_constants
  #  assert_equal([:MAX, :MIN, :REV, :VERSION], Pazaak.constants(false))
  #end
end
