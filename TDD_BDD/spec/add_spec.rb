require './add.rb'

describe "Add" do
  describe "#add" do
    it "returns the sum of two numbers" do
      expect(add(5,3)).to eq(8)
    end

  end
end
