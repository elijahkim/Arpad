require "spec_helper"

describe Arpad::ScoreRatingCalculator do
  describe "#calculate_score_value" do
    context "if the player wins" do
      it "should return 1" do
        expect(calculate_score_value("win")).to eq 1
      end
    end
    context "if the player loses" do
      it "should return 0" do
        expect(calculate_score_value("lose")).to eq 0
      end
    end
  end

  def calculate_score_value(outcome)
    Arpad::ScoreRatingCalculator.calculate_score_value(outcome)
  end
end
