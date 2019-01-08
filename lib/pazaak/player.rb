module Pazaak
  class Player
    attr_reader :name, :cards

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
  end
end
