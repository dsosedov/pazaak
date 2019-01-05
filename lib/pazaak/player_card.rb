module Pazaak
  class PlayerCard < Card
    private
      def is_valid?(value)
        value.is_a?(Integer) && ((-6..-1).include?(value) || (1..6).include?(value))
      end
  end
end
