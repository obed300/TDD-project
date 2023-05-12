class Solver
  def factorial(number)
    return 1 if [0, 1].include?(number)

    number * factorial(number - 1)
  end
end
