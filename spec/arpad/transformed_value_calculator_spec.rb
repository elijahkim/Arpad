require "spec_helper"

describe Arpad::TransformedRatingCalculator do
  describe "#calculate_transformed_rating" do
    it "should return the transformed rating" do
      expect(Arpad::TransformedRatingCalculator.calculate_transformed_rating(1400)).to be_within(1).of(3162)
    end
  end
end
