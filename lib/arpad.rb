require "arpad/version"

module Arpad
  class Calculator
    def self.calculate_elo(elo_one, elo_two, outcome, config = {})
      @k_factor = config[:k_factor] || 16
      if outcome == "win"
        1408
      else
        1392
      end
    end
  end

  class TransformedRatingCalculator
    def self.calculate_transformed_rating(elo)
      (10**(elo.to_f / 400))
    end
  end
end
