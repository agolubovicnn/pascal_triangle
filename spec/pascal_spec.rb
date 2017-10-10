require_relative '../pascal_main'

describe Pascal do

  describe "#calculate" do
    it "returns result using row number 0" do
      expect(Pascal.new.calculate(0)).to eq([[1]])
    end

    it "returns result using row number 1" do
      expect(Pascal.new.calculate(1)).to eq([[1]])
    end

    it "returns result using row number 2" do
      expect(Pascal.new.calculate(2)).to eq([[1], [1, 1]])
    end

    it "returns result using row number 3" do
      expect(Pascal.new.calculate(3)).to eq([[1], [1, 1], [1, 2, 1]])
    end

    it "returns result using row number(4)" do
      expect(Pascal.new.calculate(4)).to eq([[1], [1, 1], [1, 2, 1], [1, 3, 3, 1]])
    end
  end
end
