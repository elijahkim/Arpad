require "spec_helper"

describe Arpad::Calculator do
  describe "#calcualte_elo" do
    context "with a default k factor" do
      it { expect(Arpad::Calculator.instance_variable_get(:@k_factor)).to be 16 }
      it { expect(Arpad::Calculator.calculate_elo(1400, 1400, "win")).to be 1408 }
      it { expect(Arpad::Calculator.calculate_elo(1400, 1400, "lose")).to be 1392 }
      it { expect(Arpad::Calculator.calculate_elo(1400, 1500, "win")).to be 1410 }
      it { expect(Arpad::Calculator.calculate_elo(1400, 1500, "lose")).to be 1394 }
      it { expect(Arpad::Calculator.calculate_elo(1800, 1300, "win")).to be 1801 }
      it { expect(Arpad::Calculator.calculate_elo(1800, 1300, "lose")).to be 1785 }
      it { expect(Arpad::Calculator.calculate_elo(1300, 1800, "win")).to be 1315 }
      it { expect(Arpad::Calculator.calculate_elo(1300, 1800, "lose")).to be 1299 }
    end

    context "win a k factor of 32" do
      it { expect(Arpad::Calculator.instance_variable_get(:@k_factor)).to be 32 }
      it { expect(Arpad::Calculator.calculate_elo(1400, 1400, "win")).to be 1416 }
      it { expect(Arpad::Calculator.calculate_elo(1400, 1400, "lose")).to be 1384 }
      it { expect(Arpad::Calculator.calculate_elo(1400, 1500, "win")).to be 1420 }
      it { expect(Arpad::Calculator.calculate_elo(1400, 1500, "lose")).to be 1388 }
      it { expect(Arpad::Calculator.calculate_elo(1800, 1300, "win")).to be 1802 }
      it { expect(Arpad::Calculator.calculate_elo(1800, 1300, "lose")).to be 1780 }
      it { expect(Arpad::Calculator.calculate_elo(1300, 1800, "win")).to be 1330 }
      it { expect(Arpad::Calculator.calculate_elo(1300, 1800, "lose")).to be 1298 }
    end
  end
end
