require 'rspec'
require_relative '../solver'

describe Solver do
  describe '#factorial' do
    it 'takes an integer as argument and returns a factorial for that number' do
      solve = Solver.new
      num = 5
      result = solve.factorial(num)
      expected_factorial = 120
      expect(result).to eql(expected_factorial)
    end

    it 'returns 1 with a factorial of 0' do
      solve = Solver.new
      num = 0
      result = solve.factorial(num)
      expected_factorial = 1
      expect(result).to eql(expected_factorial)
    end
  end

  describe '#reverse' do
    it 'takes a string as an argument and returns reversed' do
      solve = Solver.new
      word = 'hello'
      result = solve.reverse(word)
      expected_outcome = 'olleh'
      expect(result).to eql(expected_outcome)
    end
  end

  describe '#fizzbuzz' do
    it 'takes an integer as an argument and returns a string' do
      solve = Solver.new
      number = 6
      result = solve.fizzbuzz(number)
      expected_outcome = 'fizz'
      expect(result).to eql(expected_outcome)
    end

    it 'returns buzz when number is divisible by 5' do
      solve = Solver.new
      number = 10
      result = solve.fizzbuzz(number)
      expected_outcome = 'buzz'
      expect(result).to eql(expected_outcome)
    end

    it 'returns fizzbuzz when number is divisible by 5 and 3' do
      solve = Solver.new
      number = 15
      result = solve.fizzbuzz(number)
      expected_outcome = 'fizzbuzz'
      expect(result).to eql(expected_outcome)
    end

    it 'returns the string of the same number for any other case' do
      solve = Solver.new
      number = 7
      result = solve.fizzbuzz(number)
      expected_outcome = '7'
      expect(result).to eql(expected_outcome)
    end
  end
end
