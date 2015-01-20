require 'spec_helper'

describe Arpad::ExpectedScoreCalculator do
  describe "#calculate_expected_score" do
    it "returns the expected score" do
      expect(calculate_expected_score(1000.0, 1000.0)).to be_eql 0.5
    end
  end

  def calculate_expected_score(transformed_rating_one, transformed_rating_two)
    Arpad::ExpectedScoreCalculator.calculate_expected_score(
      transformed_rating_one,
      transformed_rating_two
    )
  end
end
