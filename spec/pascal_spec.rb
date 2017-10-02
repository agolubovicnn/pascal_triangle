require_relative '../pascal'

describe Pascal do

  describe "#pascal_triangle" do
    it "returns result using row number 0" do
      expect(Pascal.new.pascal_triangle(0)).to eq(["1"])
    end

    it "returns result using row number 1" do
      expect(Pascal.new.pascal_triangle(1)).to eq(["1", "1 1"])
    end

    it "returns result using row number 2" do
      expect(Pascal.new.pascal_triangle(2)).to eq(["1", "1 1", "1 2 1"])
    end

    it "returns result using row number 3" do
      expect(Pascal.new.pascal_triangle(3)).to eq(["1", "1 1", "1 2 1", "1 3 3 1"])
    end

    it "returns result using row number(4)" do
      expect(Pascal.new.pascal_triangle(4)).to eq(["1", "1 1", "1 2 1", "1 3 3 1", "1 4 6 4 1"])
    end
  end
end
