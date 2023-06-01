require 'test/unit'
require_relative 'solver'

class TestSolver < Test::Unit::TestCase
  def setup
    @solver = Solver.new
  end

  def test_factorial_with_zero
    assert_equal(1, @solver.factorial(0))
  end

  def test_factorial_with_positive_integer
    assert_equal(120, @solver.factorial(5))
  end

  def test_factorial_with_negative_integer
    assert_raise(ArgumentError) { @solver.factorial(-5) }
  end

 describe "#reverse" do
    it "reverses a word correctly" do
      expect(@solver.reverse("hello")).to eq("olleh")
      expect(@solver.reverse("ruby")).to eq("ybur")
      expect(@solver.reverse("world")).to eq("dlrow")
    end

 it "returns an empty string when given an empty string" do
      expect(@solver.reverse("")).to eq("")
    end

end