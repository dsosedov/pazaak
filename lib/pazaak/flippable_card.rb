module Pazaak
  class FlippableCard < Card
    def flip
      @value = -1 * @value
    end

    private
      def is_valid?(value)
        value.is_a?(Integer) && (1..6).include?(value)
      end
  end
end
