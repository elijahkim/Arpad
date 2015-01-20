require "arpad/version"

module Arpad
  class Calculator
    def self.calculate_elo(elo_one, elo_two, outcome, config = {})
      k_factor = config[:k_factor] || 16
      transformed_rating_one = TransformedRatingCalculator.
        calculate_transformed_rating(elo_one)
      transformed_rating_two = TransformedRatingCalculator.
        calculate_transformed_rating(elo_two)
      expected_score = ExpectedScoreCalculator.
        calculate_expected_score(transformed_rating_one, transformed_rating_two)
      score_value = ScoreValueCalculator.calculate_score_value(outcome)

      (elo_one + (k_factor * (score_value - expected_score))).to_i
    end
  end

  class TransformedRatingCalculator
    def self.calculate_transformed_rating(elo)
      (10**(elo.to_f / 400))
    end
  end

  class ExpectedScoreCalculator
    def self.calculate_expected_score(t_rating_one, t_rating_two)
      t_rating_one / (t_rating_one + t_rating_two)
    end
  end

  class ScoreValueCalculator
    def self.calculate_score_value(outcome)
      if outcome == "win"
        1
      elsif outcome == "lose"
        0
      end
    end
  end
end
