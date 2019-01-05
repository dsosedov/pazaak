module Pazaak
  class Card
    attr_reader :value

    def initialize(value)
      unless is_valid?(value)
        raise 'Invalid value'
      end
      @value = value
    end

    private
      def is_valid?(value)
        value.is_a?(Integer) && (1..10).include?(value)
      end
  end
end
