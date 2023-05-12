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
    it 'return 1 with a factorial of 0' do
      solve = Solver.new
      num = 0
      result = solve.factorial(num)
      expected_factorial = 1
      expect(result).to eql(expected_factorial)
    end
  end
end
