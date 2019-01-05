require_relative 'pazaak/card'
require_relative 'pazaak/flippable_card'
require_relative 'pazaak/game'
require_relative 'pazaak/player'

# The root namespace
module Pazaak
  MAX = 0
  MIN = 1
  REV = 0

  # Gem version
  VERSION = "#{MAX}.#{MIN}.#{REV}"

  private_constant :MAX, :MIN, :REV
end
