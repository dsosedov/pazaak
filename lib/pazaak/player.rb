module Pazaak
  class Player
    attr_reader :name, :cards, :is_standing

    def initialize(name)
      @name = name
      @cards = []
    end

    def hit(card)
      @cards.push(card)
    end

    def total
      @cards.inject(0){|sum, c| sum + c.value }
    end

    def stand
      @is_standing = true
    end
  end
end
