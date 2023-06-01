require 'test/unit'
require_relative 'solver'

class SolverTest < Test::Unit::TestCase
  def setup
    @solver = Solver.new
  end

  def test_factorial_returns_1_for_factorial_of_0
    assert_equal(1, @solver.factorial(0))
  end

  def test_factorial_returns_correct_factorial_for_positive_number
    assert_equal(120, @solver.factorial(5))
  end

  def test_factorial_raises_exception_for_negative_number
    assert_raises(ArgumentError) do
      @solver.factorial(-1)
    end
  end

  def test_reverse_returns_reversed_word
    assert_equal('olleh', @solver.reverse('hello'))
  end

  def test_fizzbuzz_returns_fizz_when_divisible_by_3
    assert_equal('fizz', @solver.fizzbuzz(6))
  end

  def test_fizzbuzz_returns_buzz_when_divisible_by_5
    assert_equal('buzz', @solver.fizzbuzz(10))
  end

  def test_fizzbuzz_returns_fizzbuzz_when_divisible_by_3_and_5
    assert_equal('fizzbuzz', @solver.fizzbuzz(15))
  end

  def test_fizzbuzz_returns_number_as_string_for_other_cases
    assert_equal('7', @solver.fizzbuzz(7))
  end
end
