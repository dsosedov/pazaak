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
        value.is_a?(Integer) && ((-6..-1).include?(value) || (1..6).include?(value))
      end
  end
end
