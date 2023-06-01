require 'rspec'
require_relative 'solver'

describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns 1 for factorial of 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the correct factorial for a positive number' do
      expect(solver.factorial(5)).to eq(120)
    end

    it 'raises an exception for a negative number' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns the reversed word' do
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when the number is divisible by 3' do
      expect(solver.fizzbuzz(6)).to eq('fizz')
    end

    it 'returns "buzz" when the number is divisible by 5' do
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when the number is divisible by 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for any other case' do
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
