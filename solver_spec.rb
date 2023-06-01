require_relative 'solver'

RSpec.describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  describe "#factorial" do
    it "returns 1 when given 0" do
      expect(@solver.factorial(0)).to eq(1)
    end

    it "returns the correct factorial for positive integers" do
      expect(@solver.factorial(5)).to eq(120)
      expect(@solver.factorial(6)).to eq(720)
      expect(@solver.factorial(10)).to eq(3628800)
    end

    it "raises an ArgumentError when given a negative integer" do
      expect{ @solver.factorial(-5) }.to raise_error(ArgumentError)
    end
  end
end