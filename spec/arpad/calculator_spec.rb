require "spec_helper"

describe Arpad::Calculator do
  describe "#calcualte_elo" do
    context "with a default k factor" do
      it { expect(calculate_elo(1400, 1400, "win")).to be 1408 }
      it { expect(calculate_elo(1400, 1400, "lose")).to be 1392 }
      it { expect(calculate_elo(1400, 1500, "win")).to be 1410 }
      it { expect(calculate_elo(1400, 1500, "lose")).to be 1394 }
      it { expect(calculate_elo(1800, 1300, "win")).to be 1800 }
      it { expect(calculate_elo(1800, 1300, "lose")).to be 1784 }
      it { expect(calculate_elo(1300, 1800, "win")).to be 1315 }
      it { expect(calculate_elo(1300, 1800, "lose")).to be 1299 }
    end

    context "win a k factor of 32" do
      it { expect(calculate_elo(1400, 1400, "win", k_factor: 32)).to be 1416 }
      it { expect(calculate_elo(1400, 1400, "lose", k_factor: 32)).to be 1384 }
      it { expect(calculate_elo(1400, 1500, "win", k_factor: 32)).to be 1420 }
      it { expect(calculate_elo(1400, 1500, "lose", k_factor: 32)).to be 1388 }
      it { expect(calculate_elo(1800, 1300, "win", k_factor: 32)).to be 1801 }
      it { expect(calculate_elo(1800, 1300, "lose", k_factor: 32)).to be 1769 }
      it { expect(calculate_elo(1300, 1800, "win", k_factor: 32)).to be 1330 }
      it { expect(calculate_elo(1300, 1800, "lose", k_factor: 32)).to be 1298 }
    end
  end

  def calculate_elo(elo_one, elo_two, outcome, config = {})
    Arpad::Calculator.calculate_elo(elo_one, elo_two, outcome, config)
  end
end
